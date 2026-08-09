---
id: MEHKAM-BRAND-DOC-002
title: Brand Documentation Hierarchy and Numbering Standard
category: Brand
type: Standard
company: Mehkam Holding
version: 1.0.0
status: Active
owner: Mehkam Holding
author: Erfan Abouei
reviewer: Mehkam Brand Team
created_at: 2026-07-25
updated_at: 2026-07-25
language:
  - English
tags:
  - brand
  - documentation
  - hierarchy
  - numbering
  - naming
  - documentation-standard
  - governance
related_documents:
  - Mehkam-BRAND-DOC-001
  - Mehkam-BRAND-DOC-003
  - Mehkam-GOV-DOC-001-governance-model
  - Mehkam-GOV-DOC-004-official-principles
---

# Brand Documentation Hierarchy and Numbering Standard

<div align="center">
  <img src="../../04-brand/assets/logo/mehkam-symbol.svg" alt="Mehkam Logo" width="150" />
</div>

## Overview

This document defines the official hierarchy, folder organization, naming convention, and numbering system for Mehkam Brand Documentation.

The purpose of this standard is to ensure that all brand-related documents across Mehkam Holding follow a consistent, scalable, discoverable, and maintainable structure.

The standard establishes how brand documentation is organized, categorized, named, numbered, versioned, and maintained across the Mehkam ecosystem.

This standard applies to:

- Mehkam Holding.
- Existing subsidiary brands.
- Future portfolio companies.
- Mehkam-owned sub-brands.

# Purpose

The purpose of the Mehkam Brand Documentation Hierarchy and Numbering Standard is to establish a unified system for organizing and identifying brand documentation.

This standard exists to:

- Create a predictable documentation structure.
- Ensure consistent folder organization.
- Establish permanent document identification.
- Improve document discoverability.
- Prevent naming conflicts.
- Support documentation scalability.
- Enable consistent structures across current and future brands.
- Simplify documentation maintenance and governance.

# 1. Brand Documentation Repository Structure

All Mehkam Brand Documentation must follow the official top-level structure:

```text
04-brand/

├── 00-overview
│
├── 01-strategy
│
├── 02-identity
│
├── 03-guidelines
│
├── 04-communication
│
├── 05-assets
│
├── 06-governance
│
└── 07-documentation
```

Each directory represents a defined documentation domain.

The folder structure must remain consistent across Mehkam brands unless a documented governance decision approves a structural change.

# 2. Category Hierarchy

## 2.1 00-overview

### Purpose

Defines the fundamental foundation and organizational context of the brand.

### Contains

- Brand overview.
- Brand architecture.
- Brand ecosystem.
- Parent and sub-brand relationships.

---

## 2.2 01-strategy

### Purpose

Defines the strategic direction of the brand.

### Contains

- Brand purpose.
- Vision.
- Mission.
- Positioning.
- Values.
- Audience.
- Market research.
- Competitive direction.

---

## 2.3 02-identity

### Purpose

Defines the visual identity system of the brand.

### Contains

- Logo system.
- Colour system.
- Typography.
- Visual language.
- Design elements.
- Layout principles.

---

## 2.4 03-guidelines

### Purpose

Defines the rules for applying the brand identity.

### Contains

- Logo usage.
- Colour usage.
- Typography rules.
- Brand application rules.
- Digital application guidelines.
- Physical application guidelines.

---

## 2.5 04-communication

### Purpose

Defines brand communication standards.

### Contains

- Voice and tone.
- Messaging framework.
- Content guidelines.
- Communication principles.
- Marketing language.

---

## 2.6 05-assets

### Purpose

Stores and manages official brand resources.

### Contains

- Logos.
- Icons.
- Templates.
- Marketing assets.
- Media resources.
- Design resources.

---

## 2.7 06-governance

### Purpose

Defines brand ownership, control, approval, and evolution.

### Contains

- Approval processes.
- Ownership rules.
- Change management.
- Brand review processes.
- Governance responsibilities.

---

## 2.8 07-documentation

### Purpose

Defines and maintains the brand documentation system itself.

### Contains

- Documentation categories.
- Documentation hierarchy.
- Documentation index.
- Documentation standards.
- Documentation roadmap.

# 3. Brand Document Naming Convention

All Brand Documentation files must follow the official naming convention:

```text
Mehkam-BRAND-DOC-[NUMBER]-[DOCUMENT-NAME].md
```

Example:

```text
Mehkam-BRAND-DOC-001-brand-documentation-categories.md

Mehkam-BRAND-DOC-002-brand-documentation-hierarchy.md
```

Document names must:

- Use lowercase for the document name.
- Use hyphens as word separators.
- Avoid spaces.
- Clearly describe the document.
- Remain consistent with the document's official title.

# 4. Document Numbering System

Brand Documentation System documents use sequential numbering.

The standard format is:

```text
Mehkam-BRAND-DOC-XXX
```

Numbering rules:

- Every document ID must be unique.
- Existing document IDs must never be reused.
- Document IDs remain permanent.
- Deleted or archived documents must not have their IDs reassigned.
- New documents receive the next available number.
- Numbering must be centrally tracked through the documentation index.

Example:

```text
001
002
003
004
005
```

# 5. Folder and Document Relationship

Each brand document must belong to one primary documentation category.

The document category should determine its primary repository location and document prefix.

Example:

```text
04-brand/

├── 01-strategy
│   └── Mehkam-BRAND-STR-001-brand-positioning.md
│
├── 02-identity
│   └── Mehkam-BRAND-ID-001-logo-guidelines.md
│
├── 03-guidelines
│   └── Mehkam-BRAND-GUIDE-001-brand-usage-rules.md
│
├── 04-communication
│   └── Mehkam-BRAND-COM-001-voice-and-tone.md
│
└── 06-governance
    └── Mehkam-BRAND-GOV-001-brand-governance.md
```

A document should have one primary category even when its content relates to multiple brand domains.

Cross-domain relationships should be represented through `related_documents` rather than duplicating the document.

# 6. Document Type Prefixes

Different brand documentation domains use specific document prefixes.

## 6.1 Brand Documentation System

```text
Mehkam-BRAND-DOC
```

Used for:

- Documentation standards.
- Documentation categories.
- Documentation hierarchy.
- Documentation indexes.
- Documentation system policies.

## 6.2 Brand Strategy

```text
Mehkam-BRAND-STR
```

Used for:

- Brand strategy.
- Positioning.
- Purpose.
- Audience.
- Market direction.

## 6.3 Brand Identity

```text
Mehkam-BRAND-ID
```

Used for:

- Logo systems.
- Typography.
- Colour systems.
- Visual identity.

## 6.4 Brand Guidelines

```text
Mehkam-BRAND-GUIDE
```

Used for:

- Brand usage rules.
- Identity application.
- Design standards.
- Brand application guidelines.

## 6.5 Brand Communication

```text
Mehkam-BRAND-COM
```

Used for:

- Voice and tone.
- Messaging.
- Content.
- Communication standards.

## 6.6 Brand Assets

```text
Mehkam-BRAND-AST
```

Used for:

- Brand assets.
- Templates.
- Media resources.
- Official design resources.

## 6.7 Brand Governance

```text
Mehkam-BRAND-GOV
```

Used for:

- Brand ownership.
- Approval processes.
- Change management.
- Governance policies.

# 7. Version Management

Every brand document must include version information.

The official version format is:

```text
MAJOR.MINOR.PATCH
```

Example:

```text
1.0.0
```

## 7.1 Major Version

Major versions are used for significant structural or conceptual changes.

Example:

```text
1.0.0 → 2.0.0
```

Major changes may include:

- Structural redesign.
- Fundamental policy changes.
- Major changes to documentation architecture.

## 7.2 Minor Version

Minor versions are used when new content or capabilities are added without fundamentally changing the existing structure.

Example:

```text
1.0.0 → 1.1.0
```

## 7.3 Patch Version

Patch versions are used for corrections and minor improvements.

Example:

```text
1.0.0 → 1.0.1
```

Examples include:

- Typographical corrections.
- Formatting corrections.
- Minor clarification.
- Metadata corrections.

# 8. Brand Documentation Rules

## Rule 1 — Defined Category

Every brand document must belong to a defined documentation category.

## Rule 2 — Official Naming

All documents must follow the official Mehkam naming convention.

## Rule 3 — Permanent Identification

Document IDs must remain permanent and must never be reused.

## Rule 4 — Controlled Categories

New primary documentation categories require approval through Brand Governance.

## Rule 5 — Ecosystem Compatibility

Brand documentation structures must remain compatible with future Mehkam companies and brands.

## Rule 6 — Single Primary Location

Each document must have one primary category and repository location.

## Rule 7 — Traceability

Important structural or policy changes must remain traceable through document history and version management.

# 9. Future Sub-brand Structure

Each Mehkam company may maintain its own brand documentation using the same organizational principles.

Example:

```text
companies/

├── chasha/
│
└── brand/
    ├── 00-overview
    ├── 01-strategy
    ├── 02-identity
    ├── 03-guidelines
    ├── 04-communication
    ├── 05-assets
    ├── 06-governance
    └── 07-documentation
```

Another portfolio company may follow the same structure:

```text
companies/

├── parifan/
│
└── brand/
    ├── 00-overview
    ├── 01-strategy
    ├── 02-identity
    ├── 03-guidelines
    ├── 04-communication
    ├── 05-assets
    ├── 06-governance
    └── 07-documentation
```

The same category architecture enables Mehkam to transfer documentation practices and organizational knowledge between companies.

# 10. Documentation Index

Mehkam Brand Documentation should maintain a central documentation index.

The index should contain, at minimum:

- Document ID.
- Document title.
- Category.
- Document type.
- Version.
- Status.
- Owner.
- Location.
- Related documents.

The documentation index serves as the authoritative reference for document discoverability and numbering.

# Scope

This standard applies to:

- Mehkam Holding.
- Existing subsidiary brands.
- Future portfolio companies.
- Sub-brands.
- Brand teams.
- Marketing teams.
- Design teams.
- Communication teams.
- Teams responsible for brand documentation.

It applies to both strategic and operational brand documentation.

# Governance

The Brand Documentation Hierarchy and Numbering Standard is an official Mehkam brand documentation standard.

The Mehkam Brand Team is responsible for maintaining the structure, numbering system, naming conventions, and category definitions.

The standard should be reviewed when:

- Mehkam's brand architecture changes.
- New documentation domains become necessary.
- The portfolio expands significantly.
- Documentation requirements materially change.
- Brand governance processes are updated.
- A structural conflict is identified.
- Scheduled documentation reviews take place.

Any material modification to this standard must follow Mehkam's governance and documentation review process.

# Ownership

**Owner:** Mehkam Holding

**Responsible Team:** Mehkam Brand Team

The responsible team is accountable for maintaining the integrity of the brand documentation hierarchy, numbering system, and naming conventions.

# Related Documents

- Mehkam-BRAND-DOC-001-brand-documentation-categories
- Mehkam-BRAND-DOC-003
- Mehkam-GOV-DOC-001-governance-model
- Mehkam-GOV-DOC-004-official-principles
- GOVERNANCE.md
- BRAND.md
- DOCUMENTATION.md

# Final Statement

The Mehkam Brand Documentation Hierarchy and Numbering Standard provides the structural foundation for managing brand knowledge across Mehkam Holding.

Through consistent categorization, permanent document identification, controlled numbering, standardized naming, and structured version management, Mehkam ensures that brand documentation remains discoverable, scalable, maintainable, and compatible with the growth of the entire ecosystem.

The standard is designed to support both the current Mehkam organization and future brands while preserving consistency and organizational knowledge over the long term.

# Document History

| Version | Date       | Author       | Description                                                  |
| ------- | ---------- | ------------ | ------------------------------------------------------------ |
| 1.0.0   | 2026-07-25 | Erfan Abouei | Initial brand documentation hierarchy and numbering standard |

---
