---
id: KARA-OPS-DOC-003
title: Documentation Versioning Standard
category: Documentation
version: 1.0.0
status: Active
owner: Kara Holding
author: Erfan Abouei
reviewer: Kara Documentation Team
created_at: 2026-07-25
updated_at: 2026-07-25
language:
  - English
---

<div align="center">
  <img src="../../assets/logo/kara-logo.svg" alt="Kara Logo" width="150" />
</div>

# Documentation Versioning Standard

## Overview

This document defines the official versioning system for all documentation created inside Kara Holding and its subsidiary companies.

The purpose of this standard is to maintain document history, track changes, and ensure every document has a clear evolution path.

All Kara documentation must follow semantic versioning principles.

# 1. Version Format

Kara uses the following version format:

MAJOR.MINOR.PATCH

Example:

1.0.0

Version numbers consist of three parts:

- Major Version
- Minor Version
- Patch Version

# 2. Major Version

Major version represents significant changes that affect the meaning, structure, or purpose of a document.

Format:

1.0.0 → 2.0.0

Major version changes include:

- Complete document restructuring
- Major strategy changes
- Architecture changes
- Fundamental process changes
- Replacement of previous standards

# 3. Minor Version

Minor version represents new additions without breaking the existing document structure.

Format:

1.0.0 → 1.1.0

Minor version changes include:

- Adding new sections
- Adding new guidelines
- Adding new examples
- Extending existing rules

# 4. Patch Version

Patch version represents small corrections and non-structural updates.

Format:

1.0.0 → 1.0.1

Patch version changes include:

- Typo corrections
- Grammar improvements
- Formatting fixes
- Small clarification changes

# 5. Initial Document Version

Every newly created document must start with:

1.0.0

Example:

---
version: 1.0.0
---

The first version represents the initial approved release.

# 6. Version Update Rules

## Rule 1

Every content change must update the document version.

## Rule 2

Version numbers must always increase.

Invalid:

1.2.0 → 1.1.0

Valid:

1.1.0 → 1.2.0

## Rule 3

Document IDs must never change when versions change.

Example:

ID:

KARA-ENG-ADR-001

Version:

1.0.0 → 2.0.0

The ID remains unchanged.

# 7. Document History Tracking

Every document must maintain a Document History section.

Format:

# Document History

| Version | Date | Author | Description |
|---|---|---|---|
| 1.0.0 | YYYY-MM-DD | Name | Initial version |

Example:

| Version | Date | Author | Description |
|---|---|---|---|
| 1.0.0 | 2026-07-25 | Erfan Abouei | Initial version |
| 1.1.0 | 2026-08-01 | Erfan Abouei | Added new documentation rules |

# 8. Version Ownership

The following roles are responsible for version management.

## Author

Responsible for:

- Creating changes
- Updating version number
- Updating document history

## Owner

Responsible for:

- Document accuracy
- Approval of important changes
- Maintaining document relevance

## Reviewer

Responsible for:

- Reviewing modifications
- Ensuring quality standards

# 9. Version Review Requirements

## Major Version Changes

Require:

- Owner approval
- Reviewer approval
- Updated document history

## Minor Version Changes

Require:

- Team review

## Patch Version Changes

Require:

- Author validation

# 10. Versioning Examples

## Example 1 - New Document

1.0.0

## Example 2 - New Section Added

1.0.0 → 1.1.0

## Example 3 - Major Architecture Change

1.1.0 → 2.0.0

## Example 4 - Typo Fix

2.0.0 → 2.0.1

# Final Statement

Versioning ensures that every Kara document remains traceable, reliable, and maintainable throughout its lifecycle.

All Kara Holding documents and subsidiary company documents must follow this versioning standard.

---

# Document History

| Version | Date | Author | Description |
|---|---|---|---|
| 1.0.0 | 2026-07-25 | Erfan Abouei | Initial documentation versioning standard |