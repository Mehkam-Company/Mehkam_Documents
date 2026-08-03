---
id: Mehkam-OPS-DOC-012
title: Documentation Contribution Rules
category: Operations
type: Standard
company: Mehkam Holding
version: 1.0.0
status: Active
owner: Mehkam Holding
author: Erfan Abouei
reviewer: Mehkam Documentation Team
created_at: 2026-07-25
updated_at: 2026-07-25
language:
  - English
tags:
  - documentation
  - contribution
  - workflow
  - collaboration
related_documents:
  - Mehkam-OPS-DOC-010
  - Mehkam-OPS-DOC-011
  - Mehkam-OPS-DOC-004
---

<div align="center">
  <img src="../../04-brand/assets/logo/mehkam-symbol.svg" alt="Mehkam Logo" width="150" />
</div>

# Documentation Contribution Rules

## Overview

This document defines the official contribution rules for Mehkam Documentation Repository.

The purpose of this standard is to ensure all documentation changes are created, reviewed, maintained, and updated through a consistent process.

This standard applies to:

- Mehkam Holding teams
- Subsidiary companies
- Documentation contributors
- Reviewers
- Document owners

# 1. Documentation Contribution Philosophy

Documentation is a shared organizational asset.

Every contributor is responsible for maintaining documentation quality.

Contributions must prioritize:

- Accuracy
- Clarity
- Consistency
- Maintainability
- Long-term value

# 2. Contributor Responsibilities

## Contributors

Contributors are responsible for:

- Creating new documents when required.
- Following documentation standards.
- Using correct metadata.
- Following naming conventions.
- Preparing changes for review.

## Document Owners

Document owners are responsible for:

- Maintaining document accuracy.
- Reviewing future changes.
- Approving updates.
- Managing document lifecycle.

## Reviewers

Reviewers are responsible for:

- Checking quality.
- Validating structure.
- Ensuring standards are followed.
- Approving or requesting changes.

# 3. Creating New Documents

Before creating a new document:

1. Verify that the document does not already exist.

2. Identify the correct category and location.

3. Assign the correct document ID.

4. Use the official document template.

5. Create a dedicated branch.

Example:

```text
feature/create-security-standard
```

# 4. Document Creation Workflow

Standard workflow:

```text
Identify Requirement

↓

Create Branch

↓

Create Document

↓

Add Metadata

↓

Review Content

↓

Submit Pull Request

↓

Approval

↓

Merge
```

# 5. Document Update Rules

Existing documents must be updated when:

- Information becomes outdated.
- Processes change.
- New requirements are introduced.
- Corrections are required.

Updates must include:

- Version update.
- Updated date.
- Document history entry.
- Meaningful commit message.

# 6. Document Review Process

Every document change must be reviewed before merging.

Reviewers verify:

## Structure

- Correct folder location.
- Correct metadata.
- Correct naming.

## Content

- Accuracy.
- Clarity.
- Completeness.
- Consistency.

## Standards

- Markdown rules followed.
- Versioning applied.
- History updated.

# 7. Approval Rules

Documents require approval before becoming official.

Approval requirements:

## Standard Documents

Require:

- Document owner approval.

## Critical Documents

Require:

- Document owner approval.
- Department lead approval.

Examples:

- Security standards.
- Business strategy.
- Legal policies.

# 8. Document Lifecycle Contribution

Contributors must respect document lifecycle states:

```text
Draft

↓

Review

↓

Active

↓

Deprecated

↓

Archived
```

Rules:

- Draft documents are not official.
- Active documents are the source of truth.
- Deprecated documents remain accessible.
- Archived documents are historical records.

# 9. Pull Request Contribution Rules

Every Pull Request must include:

Required information:

```text
Title

Summary

Changed Documents

Reason for Change

Reviewer
```

Example:

```text
Title:

docs(engineering): add infrastructure standard


Summary:

Added infrastructure documentation rules.


Changed Documents:

Mehkam-ENG-DOC-001


Reason:

Create official infrastructure documentation standard.
```

# 10. Documentation Quality Rules

Every contribution must ensure:

## Readability

Documents must be easy to understand.

## Consistency

Documents must follow Mehkam standards.

## Maintainability

Documents must remain useful over time.

## Accuracy

Information must represent the current state.

# 11. Forbidden Actions

The following actions are not allowed:

## Direct Main Changes

Direct changes to main branch are forbidden.

## Missing Metadata

Documents without required metadata are not accepted.

## Duplicate Documents

Creating duplicate documentation is not allowed.

## Unreviewed Changes

Unreviewed documentation cannot become official.

# 12. Documentation Ownership Rules

Every document must have:

- Owner
- Author
- Reviewer

Ownership ensures:

- Accountability
- Maintenance
- Long-term quality

# 13. Contribution Checklist

Before submitting changes:

- [ ] Correct folder selected.
- [ ] Correct document ID assigned.
- [ ] Metadata completed.
- [ ] Markdown standard followed.
- [ ] Version updated.
- [ ] Document history updated.
- [ ] Reviewer assigned.

# Final Statement

The Mehkam Documentation Contribution Rules establish a controlled and scalable process for creating and maintaining organizational knowledge.

Every contributor must follow these rules to ensure documentation remains reliable, consistent, and valuable as Mehkam Holding grows.

---

# Document History

| Version | Date       | Author       | Description                                       |
| ------- | ---------- | ------------ | ------------------------------------------------- |
| 1.0.0   | 2026-07-25 | Erfan Abouei | Initial documentation contribution rules standard |
