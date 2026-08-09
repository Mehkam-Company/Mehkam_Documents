param(
    [switch]$Apply
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# ============================================================
# Configuration
# ============================================================

$RootPath = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path

$ExcludedDirectories = @(
    ".git",
    "node_modules",
    ".next",
    "dist",
    "build"
)

$RepositoryStandardFiles = @(
    "README.md",
    "LICENSE.md",
    "AUTHORS.md",
    "CONTRIBUTING.md",
    "CODE_OF_CONDUCT.md",
    "CHANGELOG.md"
)

$RequiredMetadata = @(
    "id",
    "title",
    "category",
    "type",
    "company",
    "version",
    "status",
    "owner",
    "author",
    "reviewer",
    "created_at",
    "updated_at",
    "language",
    "tags",
    "related_documents"
)

$RequiredSections = @(
    "Overview",
    "Final Statement",
    "Document History"
)

$ValidStatuses = @(
    "Draft",
    "Active",
    "Deprecated",
    "Archived"
)

$SupportedLanguages = @(
    "English",
    "Persian",
    "Farsi"
)

# ============================================================
# Helpers
# ============================================================

function Write-Section {
    param(
        [string]$Title
    )

    Write-Host ""
    Write-Host "============================================================" -ForegroundColor DarkGray
    Write-Host $Title -ForegroundColor Cyan
    Write-Host "============================================================" -ForegroundColor DarkGray
}

function Test-IsExcludedPath {
    param(
        [string]$Path
    )

    $NormalizedPath = $Path.Replace("\", "/")

    foreach ($directory in $ExcludedDirectories) {
        if (
            $NormalizedPath -match "(^|/)$([regex]::Escape($directory))(/|$)"
        ) {
            return $true
        }
    }

    return $false
}

function Get-SafeFiles {
    param(
        [string]$Path
    )

    @(
        Get-ChildItem `
            -Path $Path `
            -File `
            -Recurse `
            -Force |
        Where-Object {
            -not (Test-IsExcludedPath -Path $_.FullName)
        }
    )
}

function Get-SafeDirectories {
    param(
        [string]$Path
    )

    @(
        Get-ChildItem `
            -Path $Path `
            -Directory `
            -Recurse `
            -Force |
        Where-Object {
            -not (Test-IsExcludedPath -Path $_.FullName)
        }
    )
}

function Get-FileLines {
    param(
        [string]$Path
    )

    @(
        Get-Content `
            -LiteralPath $Path `
            -Encoding UTF8 `
            -ErrorAction Stop
    )
}

function Test-IsRepositoryStandardFile {
    param(
        [System.IO.FileInfo]$File
    )

    if ($RepositoryStandardFiles -contains $File.Name) {
        return $true
    }

    return $false
}

function Test-IsMehkamDocument {
    param(
        [System.IO.FileInfo]$File
    )

    $Lines = @(Get-FileLines -Path $File.FullName)

    foreach ($line in $Lines) {
        if ($line -match '^\s*id:\s*MEHKAM-[A-Z0-9-]+') {
            return $true
        }
    }

    if ($File.Name -match '^MEHKAM-[A-Z0-9-]+\.md$') {
        return $true
    }

    return $false
}

function Get-DocumentId {
    param(
        [string[]]$Lines
    )

    foreach ($line in $Lines) {
        if ($line -match '^\s*id:\s*(\S+)\s*$') {
            return $Matches[1]
        }
    }

    return $null
}

function Get-MetadataMap {
    param(
        [string[]]$Lines
    )

    $Metadata = @{}
    $InsideMetadata = $false

    foreach ($line in $Lines) {

        if ($line.Trim() -eq "---") {

            if (-not $InsideMetadata) {
                $InsideMetadata = $true
                continue
            }

            break
        }

        if ($InsideMetadata -and $line -match '^\s*([a-zA-Z_]+)\s*:\s*(.*)$') {
            $Key = $Matches[1]
            $Value = $Matches[2]

            if (-not $Metadata.ContainsKey($Key)) {
                $Metadata[$Key] = $Value
            }
        }
    }

    return $Metadata
}

function Get-MetadataKeys {
    param(
        [string[]]$Lines
    )

    $Keys = @()
    $InsideMetadata = $false

    foreach ($line in $Lines) {

        if ($line.Trim() -eq "---") {

            if (-not $InsideMetadata) {
                $InsideMetadata = $true
                continue
            }

            break
        }

        if ($InsideMetadata -and $line -match '^\s*([a-zA-Z_]+)\s*:') {
            $Keys += $Matches[1]
        }
    }

    return @($Keys)
}

function Test-LogoPlacement {
    param(
        [string[]]$Lines
    )

    $TitleIndex = -1
    $SeparatorAfterTitleIndex = -1
    $LogoIndex = -1

    for ($i = 0; $i -lt @($Lines).Count; $i++) {

        $Line = $Lines[$i]

        if ($Line -match '^\s*#\s+\S+') {
            $TitleIndex = $i
            break
        }
    }

    if ($TitleIndex -lt 0) {
        return $false
    }

    for ($i = $TitleIndex + 1; $i -lt @($Lines).Count; $i++) {

        if ($Lines[$i].Trim() -eq "---") {
            $SeparatorAfterTitleIndex = $i
            break
        }

        if ($Lines[$i] -match '!\[.*\]\(.*\)') {
            $LogoIndex = $i
        }
    }

    if ($SeparatorAfterTitleIndex -lt 0) {
        return $false
    }

    for ($i = $TitleIndex + 1; $i -lt $SeparatorAfterTitleIndex; $i++) {

        if ($Lines[$i] -match '!\[.*\]\(.*\)') {
            $LogoIndex = $i
            break
        }
    }

    if ($LogoIndex -lt 0) {
        return $false
    }

    return $LogoIndex -gt $TitleIndex -and
           $LogoIndex -lt $SeparatorAfterTitleIndex
}

function Test-SectionExists {
    param(
        [string[]]$Lines,
        [string]$Section
    )

    $Pattern = "^\s*##\s+$([regex]::Escape($Section))\s*$"

    foreach ($line in $Lines) {
        if ($line -match $Pattern) {
            return $true
        }
    }

    return $false
}

function Get-DocumentType {
    param(
        [System.IO.FileInfo]$File,
        [string[]]$Lines
    )

    if (Test-IsRepositoryStandardFile -File $File) {
        return "Repository Standard"
    }

    if (Test-IsMehkamDocument -File $File) {
        return "Mehkam Controlled Document"
    }

    if ($File.FullName -match "__mehkam_business__") {
        return "Business Document"
    }

    return "Unclassified Markdown"
}

function Add-ValidationError {
    param(
        [System.Collections.Generic.List[string]]$Errors,
        [string]$Message
    )

    $Errors.Add($Message)
}

# ============================================================
# Validation
# ============================================================

Write-Section "Repository Validation"

if (-not (Test-Path -LiteralPath $RootPath -PathType Container)) {
    throw "Repository path does not exist: $RootPath"
}

$RootPath = (Resolve-Path $RootPath).Path

Write-Host "Repository: $RootPath" -ForegroundColor Green

$GitDirectory = Join-Path $RootPath ".git"

if (-not (Test-Path -LiteralPath $GitDirectory -PathType Container)) {
    Write-Warning "No .git directory found. Make sure RootPath is the repository root."
}

# ============================================================
# Repository Scan
# ============================================================

Write-Section "Scanning Repository"

$Files = @(Get-SafeFiles -Path $RootPath)
$Directories = @(Get-SafeDirectories -Path $RootPath)

$MarkdownFiles = @(
    $Files |
    Where-Object {
        $_.Extension -ieq ".md"
    }
)

Write-Host "Files found:       $($Files.Count)"
Write-Host "Markdown files:    $($MarkdownFiles.Count)"
Write-Host "Directories found: $($Directories.Count)"

# ============================================================
# Classification
# ============================================================

Write-Section "Document Classification"

$MehkamDocuments = @()
$BusinessDocuments = @()
$RepositoryDocuments = @()
$UnclassifiedDocuments = @()

foreach ($file in $MarkdownFiles) {

    $Lines = @(Get-FileLines -Path $file.FullName)
    $Type = Get-DocumentType -File $file -Lines $Lines

    switch ($Type) {

        "Mehkam Controlled Document" {
            $MehkamDocuments += $file
        }

        "Business Document" {
            $BusinessDocuments += $file
        }

        "Repository Standard" {
            $RepositoryDocuments += $file
        }

        default {
            $UnclassifiedDocuments += $file
        }
    }
}

Write-Host "Mehkam Documents:              $($MehkamDocuments.Count)"
Write-Host "Business Documents:            $($BusinessDocuments.Count)"
Write-Host "Repository Standard Files:     $($RepositoryDocuments.Count)"
Write-Host "Unclassified Markdown Files:   $($UnclassifiedDocuments.Count)"

# ============================================================
# Mehkam Document Validation
# ============================================================

Write-Section "Validating Mehkam Markdown Structure"

$ValidationResults = @()

foreach ($file in $MehkamDocuments) {

    $Lines = @(Get-FileLines -Path $file.FullName)

    $Errors = [System.Collections.Generic.List[string]]::new()

    # --------------------------------------------------------
    # Metadata Separator
    # --------------------------------------------------------

    $SeparatorIndexes = @()

    for ($i = 0; $i -lt @($Lines).Count; $i++) {
        if ($Lines[$i].Trim() -eq "---") {
            $SeparatorIndexes += $i
        }
    }

    if ($SeparatorIndexes.Count -lt 2) {
        Add-ValidationError `
            -Errors $Errors `
            -Message "Missing metadata separator (---)."
    }

    # --------------------------------------------------------
    # Metadata
    # --------------------------------------------------------

    $Metadata = Get-MetadataMap -Lines $Lines
    $MetadataKeys = @(Get-MetadataKeys -Lines $Lines)

    foreach ($field in $RequiredMetadata) {

        if (-not $Metadata.ContainsKey($field)) {

            Add-ValidationError `
                -Errors $Errors `
                -Message "Missing metadata field: $field"
        }
    }

    # --------------------------------------------------------
    # Metadata Order
    # --------------------------------------------------------

    if ($MetadataKeys.Count -gt 0) {

        $ExpectedIndex = 0

        foreach ($key in $MetadataKeys) {

            if ($ExpectedIndex -ge $RequiredMetadata.Count) {
                break
            }

            $ExpectedKey = $RequiredMetadata[$ExpectedIndex]

            if ($key -ne $ExpectedKey) {

                Add-ValidationError `
                    -Errors $Errors `
                    -Message "Metadata order mismatch. Expected '$ExpectedKey' but found '$key'."

                break
            }

            $ExpectedIndex++
        }
    }

    # --------------------------------------------------------
    # Document ID
    # --------------------------------------------------------

    $DocumentId = Get-DocumentId -Lines $Lines

    if ($null -ne $DocumentId) {

        if ($DocumentId -notmatch '^MEHKAM-[A-Z]+-[A-Z]+-\d{3}$') {

            Add-ValidationError `
                -Errors $Errors `
                -Message "Invalid document ID format: $DocumentId"
        }
    }

    # --------------------------------------------------------
    # Status
    # --------------------------------------------------------

    if ($Metadata.ContainsKey("status")) {

        $Status = $Metadata["status"]

        if ($ValidStatuses -notcontains $Status) {

            Add-ValidationError `
                -Errors $Errors `
                -Message "Invalid status: $Status"
        }
    }

    # --------------------------------------------------------
    # Language
    # --------------------------------------------------------

    $LanguageFound = $false

    foreach ($line in $Lines) {

        foreach ($language in $SupportedLanguages) {

            if ($line.Trim() -eq "- $language") {
                $LanguageFound = $true
                break
            }
        }

        if ($LanguageFound) {
            break
        }
    }

    if (-not $LanguageFound) {

        Add-ValidationError `
            -Errors $Errors `
            -Message "No supported language entry found."
    }

    # --------------------------------------------------------
    # Logo
    # --------------------------------------------------------

    if (-not (Test-LogoPlacement -Lines $Lines)) {

        Add-ValidationError `
            -Errors $Errors `
            -Message "Mehkam logo is missing or incorrectly positioned."
    }

    # --------------------------------------------------------
    # Title
    # --------------------------------------------------------

    $TitleIndex = -1

    for ($i = 0; $i -lt @($Lines).Count; $i++) {

        if ($Lines[$i] -match '^\s*#\s+\S+') {
            $TitleIndex = $i
            break
        }
    }

    if ($TitleIndex -lt 0) {

        Add-ValidationError `
            -Errors $Errors `
            -Message "Missing document title."
    }
    else {

        if ($TitleIndex + 1 -ge @($Lines).Count -or
            $Lines[$TitleIndex + 1].Trim() -ne "---") {

            Add-ValidationError `
                -Errors $Errors `
                -Message "Missing separator (---) after document title."
        }
    }

    # --------------------------------------------------------
    # Required Sections
    # --------------------------------------------------------

    foreach ($section in $RequiredSections) {

        if (-not (Test-SectionExists -Lines $Lines -Section $section)) {

            Add-ValidationError `
                -Errors $Errors `
                -Message "Missing ## $section section."
        }
    }

    # --------------------------------------------------------
    # Result
    # --------------------------------------------------------

    $Status = if ($Errors.Count -eq 0) {
        "PASS"
    }
    else {
        "FAIL"
    }

    $ValidationResults += [PSCustomObject]@{
        File   = $file.FullName
        Name   = $file.Name
        ID     = $DocumentId
        Status = $Status
        Errors = @($Errors)
    }

    if ($Status -eq "PASS") {

        Write-Host "[PASS] $($file.FullName)" -ForegroundColor Green
    }
    else {

        Write-Host "[FAIL] $($file.FullName)" -ForegroundColor Red

        foreach ($errorMessage in $Errors) {

            Write-Host "    -> $errorMessage" -ForegroundColor Yellow
        }
    }
}

# ============================================================
# Duplicate Markdown Names
# ============================================================

Write-Section "Detecting Duplicate Markdown Names"

$DuplicateNames = @(
    $MarkdownFiles |
    Group-Object Name |
    Where-Object {
        $_.Count -gt 1
    }
)

if ($DuplicateNames.Count -eq 0) {

    Write-Host "No duplicate Markdown filenames found." -ForegroundColor Green
}
else {

    foreach ($group in $DuplicateNames) {

        Write-Host ""
        Write-Host "Potential duplicate: $($group.Name)" -ForegroundColor Yellow

        foreach ($file in $group.Group) {

            Write-Host "    -> $($file.FullName)" -ForegroundColor Gray
        }
    }

    Write-Host ""
    Write-Host "Duplicate files were not modified." -ForegroundColor Magenta
}

# ============================================================
# Duplicate Document IDs
# ============================================================

Write-Section "Detecting Duplicate Document IDs"

$DocumentIdRecords = @()

foreach ($result in $ValidationResults) {

    if (-not [string]::IsNullOrWhiteSpace($result.ID)) {

        $DocumentIdRecords += [PSCustomObject]@{
            DocumentId = $result.ID
            FilePath   = $result.File
            FileName   = $result.Name
        }
    }
}

$DuplicateDocumentIds = @(
    $DocumentIdRecords |
    Group-Object DocumentId |
    Where-Object {
        $_.Count -gt 1
    }
)

if ($DuplicateDocumentIds.Count -eq 0) {

    Write-Host "No duplicate document IDs detected." -ForegroundColor Green
}
else {

    foreach ($group in $DuplicateDocumentIds) {

        Write-Host ""
        Write-Host "Duplicate ID: $($group.Name)" -ForegroundColor Yellow

        foreach ($item in $group.Group) {

            Write-Host "    -> $($item.FileName)" -ForegroundColor Gray
            Write-Host "       $($item.FilePath)" -ForegroundColor DarkGray
        }
    }
}

# ============================================================
# Unclassified Documents
# ============================================================

Write-Section "Unclassified Markdown Files"

if ($UnclassifiedDocuments.Count -eq 0) {

    Write-Host "No unclassified Markdown files found." -ForegroundColor Green
}
else {

    foreach ($file in $UnclassifiedDocuments) {

        Write-Host "[INFO] $($file.FullName)" -ForegroundColor Gray
    }
}

# ============================================================
# Business Documents
# ============================================================

Write-Section "Business Documents"

if ($BusinessDocuments.Count -eq 0) {

    Write-Host "No business Markdown documents found." -ForegroundColor Green
}
else {

    foreach ($file in $BusinessDocuments) {

        Write-Host "[BUSINESS] $($file.FullName)" -ForegroundColor Gray
    }
}

# ============================================================
# Repository Standard Files
# ============================================================

Write-Section "Repository Standard Files"

if ($RepositoryDocuments.Count -eq 0) {

    Write-Host "No repository standard files found." -ForegroundColor Green
}
else {

    foreach ($file in $RepositoryDocuments) {

        Write-Host "[STANDARD] $($file.FullName)" -ForegroundColor Gray
    }
}

# ============================================================
# Validation Summary
# ============================================================

Write-Section "Validation Summary"

$PassedDocuments = @(
    $ValidationResults |
    Where-Object {
        $_.Status -eq "PASS"
    }
)

$FailedDocuments = @(
    $ValidationResults |
    Where-Object {
        $_.Status -eq "FAIL"
    }
)

$TotalErrors = 0

foreach ($result in $ValidationResults) {
    $TotalErrors += @($result.Errors).Count
}

Write-Host ""
Write-Host "Mehkam Controlled Documents: $($ValidationResults.Count)"
Write-Host "Passed:                      $($PassedDocuments.Count)" -ForegroundColor Green
Write-Host "Failed:                      $($FailedDocuments.Count)" -ForegroundColor Red
Write-Host "Total validation errors:     $TotalErrors"

# ============================================================
# Structural Integrity
# ============================================================

Write-Section "Structural Integrity"

$MetadataFailures = 0
$LogoFailures = 0
$TitleFailures = 0
$OverviewFailures = 0
$FinalStatementFailures = 0
$HistoryFailures = 0

foreach ($result in $ValidationResults) {

    foreach ($errorMessage in $result.Errors) {

        if ($errorMessage -match "metadata") {
            $MetadataFailures++
        }

        if ($errorMessage -match "logo") {
            $LogoFailures++
        }

        if ($errorMessage -match "title") {
            $TitleFailures++
        }

        if ($errorMessage -match "Overview") {
            $OverviewFailures++
        }

        if ($errorMessage -match "Final Statement") {
            $FinalStatementFailures++
        }

        if ($errorMessage -match "Document History") {
            $HistoryFailures++
        }
    }
}

if ($MetadataFailures -eq 0) {
    Write-Host "[PASS] Metadata structure" -ForegroundColor Green
}
else {
    Write-Host "[FAIL] Metadata structure: $MetadataFailures issue(s)" -ForegroundColor Red
}

if ($LogoFailures -eq 0) {
    Write-Host "[PASS] Logo placement" -ForegroundColor Green
}
else {
    Write-Host "[FAIL] Logo placement: $LogoFailures issue(s)" -ForegroundColor Red
}

if ($TitleFailures -eq 0) {
    Write-Host "[PASS] Title placement" -ForegroundColor Green
}
else {
    Write-Host "[FAIL] Title placement: $TitleFailures issue(s)" -ForegroundColor Red
}

if ($OverviewFailures -eq 0) {
    Write-Host "[PASS] Overview section" -ForegroundColor Green
}
else {
    Write-Host "[FAIL] Overview section: $OverviewFailures issue(s)" -ForegroundColor Red
}

if ($FinalStatementFailures -eq 0) {
    Write-Host "[PASS] Final Statement section" -ForegroundColor Green
}
else {
    Write-Host "[FAIL] Final Statement section: $FinalStatementFailures issue(s)" -ForegroundColor Red
}

if ($HistoryFailures -eq 0) {
    Write-Host "[PASS] Document History section" -ForegroundColor Green
}
else {
    Write-Host "[FAIL] Document History section: $HistoryFailures issue(s)" -ForegroundColor Red
}

# ============================================================
# Final Result
# ============================================================

Write-Section "Validation Result"

if ($FailedDocuments.Count -eq 0) {

    Write-Host "Status: PASSED" -ForegroundColor Green
}
else {

    Write-Host "Status: FAILED" -ForegroundColor Red
}

Write-Host ""
Write-Host "No files were modified." -ForegroundColor Green
Write-Host "Validator operates in read-only mode." -ForegroundColor Green
Write-Host "Duplicate documents were never deleted automatically." -ForegroundColor Green
Write-Host "Repository standard files were excluded from strict Mehkam validation." -ForegroundColor Green
Write-Host "Business documents were excluded from strict Mehkam validation." -ForegroundColor Green