---
id: KARA-OPS-DOC-006
title: Markdown Document Structure Standard
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
  <img src="../../04-brand/assets/logo/kara-symbol.svg" alt="Kara Logo" width="150" />

</div>

# Markdown Document Structure Standard

## Overview

This document defines the official structure for all Markdown documentation created inside Kara Holding and its subsidiary companies.

The purpose of this standard is to ensure every document follows a consistent, scalable, and professional structure regardless of document type.

All Kara documentation must follow this structure:

- Kara Holding
- Chasha
- Phrifan
- Future subsidiary companies

# 1. Standard Document Structure

Every Markdown document must follow the following structure:

```
Metadata Header

Logo Section (Optional)

Document Title

Overview

Main Content Sections

Rules / Guidelines (When Required)

Examples (When Required)

References (When Required)

Final Statement

Document History
```

# 2. Metadata Header

Every document must start with a YAML metadata header.

Purpose:

- Document identification
- Ownership tracking
- Version management
- Lifecycle management

Example:

```yaml
---
id: KARA-OPS-DOC-001
title: Example Document
category: Documentation
version: 1.0.0
status: Active
owner: Kara Holding
author: Name
reviewer: Team
created_at: YYYY-MM-DD
updated_at: YYYY-MM-DD
language:
  - English
---
```

# 3. Logo Section

## Purpose

The logo section provides official branding for important documentation.

## Usage

Logo section is optional.

Recommended for:

- Company standards
- Policies
- Architecture documents
- Public documentation

Example:

```html
<div align="center">
  <img
    src="../../04-brand/assets/logo/kara-symbol.svg"
    alt="Kara Logo"
    width="150"
  />
</div>
```

# 4. Document Title

Every document must contain a main title.

Rules:

- Title must match metadata title.
- Title must clearly describe document purpose.
- Title must use Heading Level 1.

Example:

```md
# Documentation Lifecycle Standard
```

# 5. Overview Section

Every document must contain an Overview section.

Purpose:

- Explain document objective.
- Describe document scope.
- Provide context for readers.

# 6. Main Content Sections

Main Content contains the primary information of the document.

The structure depends on document type.

Examples:

Architecture Documents:

- Context
- Decision
- Architecture
- Consequences

Product Documents:

- Problem
- Requirements
- User Stories
- Acceptance Criteria

Standard Documents:

- Rules
- Guidelines
- Processes

# 7. Rules and Guidelines Section

## Purpose

Defines mandatory standards and expected behaviour.

## Usage

Recommended for:

- Policies
- Standards
- SOP documents
- Engineering guidelines

# 8. Examples Section

## Purpose

Examples improve understanding and reduce ambiguity.

Examples can include:

- Code examples
- File structures
- Templates
- Usage scenarios

# 9. References Section

## Purpose

Stores related documents and external resources.

References are optional.

Include when:

- Related documents exist.
- External standards are used.
- Additional resources are required.

# 10. Final Statement

Every official Kara documentation should contain a Final Statement.

Purpose:

- Summarise document responsibility.
- Reinforce the document purpose.
- Provide a clear conclusion.

# 11. Document History

Every document must end with Document History.

Required format:

| Version | Date       | Author | Description     |
| ------- | ---------- | ------ | --------------- |
| 1.0.0   | YYYY-MM-DD | Name   | Initial version |

# 12. Heading Hierarchy

Kara documentation uses the following heading hierarchy:

```
# Main Section

## Sub Section

### Detail Section
```

Rules:

- Do not skip heading levels.
- Keep hierarchy logical.
- Avoid excessive nesting.

# 13. Structure Rules

## Rule 1

Every Markdown document must follow this standard structure.

## Rule 2

Document content may change based on document type, but the structure must remain consistent.

## Rule 3

Custom document structures require approval from Kara Documentation Team.

## Rule 4

Documentation consistency has priority over individual writing preferences.

# Final Statement

The Kara Markdown Document Structure Standard ensures every document across Kara Holding follows a unified, scalable, and professional structure.

This standard applies to all current and future Kara companies.

---

# Document History

| Version | Date       | Author       | Description                                  |
| ------- | ---------- | ------------ | -------------------------------------------- |
| 1.0.0   | 2026-07-25 | Erfan Abouei | Initial Markdown document structure standard |
