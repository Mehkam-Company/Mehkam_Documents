---
id: MEHKAM-BRAND-OPS-001
title: Asset Production Pipeline
category: Brand Operations
type: Standard
company: Mehkam Holding
version: 1.0.0
status: Active
owner: Mehkam Holding
author: Erfan Abouei
reviewer: Mehkam Documentation Team
created_at: 2026-08-11
updated_at: 2026-08-11
language:
  - English
tags:
  - brand
  - assets
  - production
  - workflow
  - ai
  - review
  - export
  - storage
  - governance
related_documents:
  - MEHKAM-BRAND-GOV-001-asset-governance.md
  - MEHKAM-BRAND-IDN-001-visual-identity-system.md
  - MEHKAM-BRAND-IDN-002-master-color-system.md
  - MEHKAM-BRAND-IDN-003-typography-system.md
  - MEHKAM-BRAND-IDN-004-master-logo-system.md
---

# Asset Production Pipeline

---

<div align="center">
  <img src="../../assets/logo/mehkam-symbol.svg" alt="Mehkam Logo" width="150" />
</div>

## Overview

This document defines the standardized production pipeline for creating, reviewing, approving, exporting, and storing Mehkam Holding brand assets.

The pipeline establishes a controlled production model that allows AI-assisted asset creation while maintaining human review and centralized Brand Governance.

The objective is to ensure that every approved Mehkam asset is:

- Consistent
- Traceable
- Reviewable
- Reproducible
- Properly exported
- Correctly stored
- Governance-compliant

---

# 1. Production Philosophy

Mehkam uses a controlled production model in which technology, including AI, accelerates asset production without replacing human brand judgment.

The core principle is:

> **AI may accelerate production; Brand Governance remains the authority.**

No asset becomes an official Mehkam Brand Asset solely because it was successfully generated or technically completed.

---

# 2. Production Flow

The official production process follows the previously established Mehkam Asset Workflow.

```text
Source
  ↓
Production
  ↓
Review
  ↓
Approval
  ↓
Export
  ↓
Storage
```

Each stage has a distinct responsibility.

---

# 3. Source

The Source stage establishes the inputs required to produce an asset.

Sources may include:

- Brand documentation
- Approved logo files
- Approved color tokens
- Typography standards
- Imagery standards
- Existing approved assets
- Product requirements
- Marketing requirements
- Creative briefs
- Approved references

Source materials must originate from approved or controlled references whenever applicable.

---

# 4. Production

Production is the creation or modification of the asset based on the approved source material.

Production may be performed using:

- Manual design tools
- AI tools
- Hybrid human + AI workflows
- Automated asset generation
- Existing approved templates

The production method does not change the governance requirements.

---

# 5. AI-Assisted Production

AI may be used for:

- Asset generation
- Concept exploration
- Image generation
- Image optimization
- Background generation or modification
- Layout exploration
- Variant generation
- Technical optimization
- Production acceleration

AI is considered a production tool rather than an authority.

---

# 6. Human Review Requirement

All AI-generated or AI-assisted assets must undergo Human Review.

Human Review must evaluate:

- Brand alignment
- Visual quality
- Realism
- Composition
- Typography
- Color usage
- Logo integrity
- Technical quality
- Unintended artifacts
- Consistency with existing assets

AI output must never be considered final solely because it appears technically complete.

---

# 7. AI Quality Control

AI-generated assets require additional attention to:

- Artificial visual artifacts
- Unrealistic human behavior
- Distorted anatomy
- Incorrect typography
- Inconsistent lighting
- Unrealistic materials
- Synthetic-looking textures
- Unnatural composition
- Unintended visual elements

Any output that appears obviously AI-generated or inconsistent with Mehkam's Visual Identity must be rejected or revised.

---

# 8. Review

The Review stage validates the asset before formal approval.

Review should verify:

### Brand

- Visual Identity compliance
- Color compliance
- Typography compliance
- Logo compliance
- Imagery compliance

### Composition

- Alignment
- Hierarchy
- Spacing
- Balance
- Legibility

### Technical

- Dimensions
- Resolution
- Format
- Transparency
- Export quality

---

# 9. Approval

An asset becomes an official Mehkam Brand Asset only after final approval by **Brand Governance**.

Approval authority is centralized.

The following principle is mandatory:

> **No final Brand Governance approval → No official Library asset.**

Human Review is necessary but does not replace Brand Governance approval.

---

# 10. Export

After approval, the asset must be exported using the standardized format defined for its Asset Type.

Exports must preserve:

- Visual integrity
- Resolution
- Color accuracy
- Transparency
- Typography
- Logo integrity
- Required metadata where applicable

Exporting must not introduce visual or technical changes that were not present in the approved asset.

---

# 11. Export Standards

Each Asset Type must have predefined export standards.

These standards should define:

- Master format
- Distribution format
- Web format
- Print format
- Resolution
- Dimensions
- Color profile
- Transparency requirements

Example:

```text
Asset Type
    ↓
Approved Master
    ↓
Required Variants
    ↓
Standard Formats
```

No arbitrary export format should be introduced for official distribution without a defined use case.

---

# 12. Asset Storage Architecture

The Mehkam Asset Library follows a simple hierarchical storage model:

```text
Asset Type
    └── Variant
          └── Format
```

Example:

```text
assets/
├── logo/
│   ├── master/
│   │   ├── black/
│   │   │   └── svg/
│   │   └── white/
│   │       └── svg/
│   └── simplified/
│       ├── black/
│       │   └── svg/
│       └── white/
│           └── svg/
│
├── icons/
│   ├── master/
│   └── png/
│
├── social/
│   ├── instagram/
│   ├── linkedin/
│   └── telegram/
│
└── templates/
    ├── documents/
    ├── marketing/
    └── presentations/
```

The exact directory structure may evolve as new Asset Types are introduced, but the hierarchy must remain predictable.

---

# 13. Library Admission

Only approved assets may enter the official Mehkam Asset Library.

The admission rule is:

```text
Produced
   ↓
Reviewed
   ↓
Brand Governance Approved
   ↓
Exported
   ↓
Library
```

Draft, rejected, experimental, or unapproved assets must not be stored alongside official production assets.

---

# 14. Draft and Experimental Assets

Drafts and experiments may exist during production.

However, they must remain outside the official Asset Library.

Examples include:

- AI generations
- Concept explorations
- Unapproved variants
- Design experiments
- Rejected versions
- Temporary exports

These files should be stored in a controlled working area rather than the official Library.

---

# 15. Master Asset Principle

Where applicable, every Asset Type should maintain an authoritative Master Asset.

The Master Asset serves as the source for:

- Variants
- Exports
- Distribution formats
- Future revisions

Derivative assets must not become independent sources of truth.

---

# 16. Variant Management

Variants must be explicitly defined.

A Variant may represent:

- Color
- Layout
- Responsive state
- Platform
- Context
- Size
- Orientation
- Application

Variants must not be created arbitrarily.

Each official Variant must have a documented purpose.

---

# 17. Format Management

Formats must correspond to actual production or distribution requirements.

Examples may include:

```text
SVG
PNG
PDF
JPG
WEBP
```

The appropriate format depends on the Asset Type and intended application.

Official format requirements must be documented separately where detailed technical specifications are necessary.

---

# 18. Naming and Versioning

All assets must follow the centralized naming and versioning rules defined by Mehkam Asset Governance.

The production pipeline must never introduce independent naming conventions.

Asset naming should make it possible to identify:

- Asset Type
- Variant
- Color where applicable
- Format
- Version where applicable

---

# 19. AI Metadata and Traceability

Where technically and operationally appropriate, AI-assisted assets should retain production traceability.

Relevant information may include:

- Tool used
- Production method
- Human reviewer
- Approval status
- Source asset
- Revision history

The objective is not to expose internal production details publicly, but to preserve internal accountability and reproducibility.

---

# 20. Revisions

When an approved asset requires modification:

```text
Existing Approved Asset
        ↓
Revision
        ↓
Human Review
        ↓
Brand Governance Approval
        ↓
New Approved Version
        ↓
Export
        ↓
Library Update
```

An existing approved asset must not be overwritten without controlled versioning when the change affects its approved visual or functional state.

---

# 21. Rejection

An asset must be rejected when it:

- Violates Brand Identity
- Uses unauthorized colors
- Uses unauthorized typography
- Violates Logo System rules
- Contains AI artifacts
- Appears artificial or unrealistic where realism is required
- Fails technical requirements
- Does not satisfy the intended use case
- Introduces unauthorized visual language

Rejected assets must not enter the official Asset Library.

---

# 22. Quality Gate

Before Library admission, the following must be true:

```text
[✓] Source is controlled
[✓] Asset is produced
[✓] Human Review completed
[✓] Brand Governance approval completed
[✓] Required variants completed
[✓] Required formats exported
[✓] Naming validated
[✓] Storage location validated
```

Only when all required gates are satisfied should the asset be considered production-ready.

---

# 23. Pipeline Governance

The Asset Production Pipeline is governed centrally by Mehkam Holding.

No team or individual may bypass:

- Human Review
- Brand Governance Approval
- Standardized Export Requirements
- Asset Naming Rules
- Official Storage Structure

unless a formal governance exception is approved.

---

# 24. Core Pipeline Rules

The following rules are mandatory:

1. **AI may assist production but cannot replace human review.**
2. **All AI-generated assets require Human Review.**
3. **Brand Governance provides final approval.**
4. **Only approved assets enter the official Asset Library.**
5. **Each Asset Type must have standardized export formats.**
6. **Storage follows Asset Type → Variant → Format.**
7. **Master Assets remain the source of truth.**
8. **Drafts and experiments remain outside the official Library.**
9. **Revisions require controlled review and approval.**
10. **The production pipeline must remain traceable and repeatable.**

---

# 25. Final Production Principle

The Mehkam Asset Production Pipeline follows one fundamental principle:

> **Production may be accelerated; quality and governance may not be bypassed.**

AI increases production capacity.

Human Review protects quality.

Brand Governance protects identity.

Standardized exports protect consistency.

Structured storage protects scalability.

Together, these mechanisms create a repeatable and controlled asset production system for Mehkam Holding.

---

# 26. Related Documents

- `MEHKAM-BRAND-GOV-001-asset-governance.md`
- `MEHKAM-BRAND-IDN-001-visual-identity-system.md`
- `MEHKAM-BRAND-IDN-002-master-color-system.md`
- `MEHKAM-BRAND-IDN-003-typography-system.md`
- `MEHKAM-BRAND-IDN-004-master-logo-system.md`
- `MEHKAM-BRAND-DOC-001-brand-documentation-categories.md`
- `MEHKAM-BRAND-DOC-004-brand-documentation-index.md`

---

# Final Statement

This document establishes the official Asset Production Pipeline of Mehkam Holding.

It defines the controlled workflow for producing, reviewing, approving, exporting, and storing brand assets, while explicitly establishing AI as an acceleration tool under Human Review and centralized Brand Governance.

All official Mehkam assets must follow this pipeline before entering the production Asset Library.

---

# Document History

| Version | Date       | Author       | Description                                   |
| ------- | ---------- | ------------ | --------------------------------------------- |
| 1.0.0   | 2026-08-11 | Erfan Abouei | Initial Asset Production Pipeline established |
