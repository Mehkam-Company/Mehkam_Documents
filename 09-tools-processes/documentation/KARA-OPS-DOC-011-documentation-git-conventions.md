---
id: KARA-OPS-DOC-011
title: Documentation Git Branch and Commit Conventions
category: Operations
type: Standard
company: Kara Holding
version: 1.0.0
status: Active
owner: Kara Holding
author: Erfan Abouei
reviewer: Kara Documentation Team
created_at: 2026-07-25
updated_at: 2026-07-25
language:
  - English
tags:
  - documentation
  - git
  - branch
  - commit
  - workflow
related_documents:
  - KARA-OPS-DOC-010
  - KARA-OPS-DOC-012
---

<div align="center">
  <img src="../../04-brand/assets/logo/kara-symbol.svg" alt="Kara Logo" width="150" />
</div>

# Documentation Git Branch and Commit Conventions

## Overview

This document defines the official Git workflow standards for Kara Documentation Repository.

The purpose of this standard is to ensure documentation changes remain:

- Traceable
- Organized
- Reviewable
- Consistent

This standard applies to all teams contributing to Kara documentation.

# 1. Git Workflow Philosophy

Kara documentation follows a controlled change management process.

Documentation changes must be:

- Created intentionally.
- Reviewed before merging.
- Recorded through meaningful commits.
- Traceable through Git history.

# 2. Branch Strategy

Kara Documentation Repository uses a simplified Git workflow.

Main branches:

```text
main
```

Purpose:

- Contains approved and official documentation.
- Represents the current source of truth.

Development branches:

```text
feature/*
```

Purpose:

- Used for creating new documentation.
- Used for improving existing documents.

Example:

```text
feature/add-brand-guidelines
```

# 3. Branch Naming Convention

All branches must follow:

```text
[type]/[short-description]
```

Supported types:

```text
feature
update
fix
archive
```

## Feature Branch

Used for new documents.

Example:

```text
feature/create-investment-thesis
```

## Update Branch

Used for improving existing documents.

Example:

```text
update/update-company-profile
```

## Fix Branch

Used for correcting documentation issues.

Example:

```text
fix/correct-document-metadata
```

## Archive Branch

Used for document lifecycle changes.

Example:

```text
archive/deprecate-old-strategy
```

# 4. Commit Message Convention

Kara uses Conventional Commit style.

Format:

```text
type(scope): short description
```

Example:

```text
docs(brand): add brand documentation index
```

# 5. Commit Types

## docs

Used for documentation changes.

Example:

```text
docs(documentation): add repository standards
```

## update

Used for updating existing content.

Example:

```text
update(strategy): revise business model document
```

## fix

Used for correcting errors.

Example:

```text
fix(metadata): correct document version format
```

## chore

Used for repository maintenance.

Example:

```text
chore(repository): update documentation structure
```

# 6. Commit Writing Rules

Every commit message must:

- Describe the actual change.
- Be written in English.
- Remain concise.
- Follow the required format.

Avoid:

```text
update files
```

```text
changes
```

```text
fix stuff
```

Preferred:

```text
docs(operations): add hiring process documentation
```

# 7. Pull Request Rules

All documentation changes must be reviewed before merging.

Pull Requests must include:

- Clear title
- Description of changes
- Related documents
- Reviewer approval

Example:

```text
Title:

docs: add documentation lifecycle standard
```

# 8. Documentation Change Workflow

Standard workflow:

```text
Create Branch

↓

Create or Update Document

↓

Commit Changes

↓

Open Pull Request

↓

Review

↓

Merge to Main
```

# 9. Commit Scope Convention

Scope identifies the affected documentation area.

Available scopes:

```text
overview
strategy
portfolio
engineering
brand
operations
finance
legal
knowledge
documentation
```

Example:

```text
docs(engineering): add architecture guidelines
```

# 10. History and Traceability

Git history must provide enough information to understand:

- What changed.
- Why it changed.
- Who changed it.
- When it changed.

Documentation history and Git history must remain synchronized.

# 11. Rules

## Rule 1

Direct commits to main are not allowed.

## Rule 2

Every change must have a meaningful commit message.

## Rule 3

Branches must follow naming conventions.

## Rule 4

Large documentation changes should be separated into multiple commits.

## Rule 5

Deprecated documents must be handled through the archive process.

# Final Statement

The Kara Documentation Git Branch and Commit Convention establishes a professional workflow for managing documentation changes.

This standard ensures documentation remains reliable, traceable, and scalable as Kara Holding grows.

---

# Document History

| Version | Date       | Author       | Description                                       |
| ------- | ---------- | ------------ | ------------------------------------------------- |
| 1.0.0   | 2026-07-25 | Erfan Abouei | Initial Git branch and commit convention standard |
