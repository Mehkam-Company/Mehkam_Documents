---
id: MEHKAM-OPS-DOC-002
title: Documentation Naming Convention
category: Documentation
version: 1.0.0
status: Active
owner: Mehkam Holding
author: Erfan Abouei
reviewer: Mehkam Documentation Team
created_at: 2026-07-25
updated_at: 2026-07-25
language:
  - English
---

<div align="center">
  <img src="../../04-brand/assets/logo/mehkam-symbol.svg" alt="Mehkam Logo" width="150" />

</div>

# Documentation Naming Convention

## Overview

This document defines the official naming convention for all documents created inside Mehkam Holding and its subsidiary companies.

The purpose of this standard is to create a scalable, searchable, and consistent documentation system across the entire Mehkam ecosystem.

A unified naming system ensures:

- Clear document ownership
- Easy document discovery
- Consistent documentation structure
- Long-term scalability

# 1. Naming Format

All documents must follow this format:

[COMPANY]-[DOMAIN]-[TYPE]-[NUMBER]-[TITLE].md

Example:

Mehkam-ENG-ADR-001-system-architecture.md

# 2. Company Code

Company code identifies the organization responsible for the document.

## Holding Company

Code:

Mehkam

Example:

Mehkam-GOV-POL-001-decision-making-policy.md

## Subsidiary Companies

Each subsidiary company must have a unique company code.

Examples:

CHASHA

PHRIFAN

Examples:

CHASHA-DSC-DOC-001-design-system-foundation.md

PHRIFAN-ENG-ADR-001-system-architecture.md

# 3. Domain Codes

Domain code identifies the business area of the document.

| Code | Domain          |
| ---- | --------------- |
| GOV  | Governance      |
| STR  | Strategy        |
| ENG  | Engineering     |
| PRD  | Product         |
| DSC  | Design          |
| MKT  | Marketing       |
| FIN  | Finance         |
| LEG  | Legal           |
| OPS  | Operations      |
| SEC  | Security        |
| HR   | Human Resources |
| KNO  | Knowledge       |

# 4. Document Type Codes

Document type defines the purpose and structure of the document.

| Code | Type                         |
| ---- | ---------------------------- |
| DOC  | General Document             |
| ADR  | Architecture Decision Record |
| PRD  | Product Requirement Document |
| RFC  | Request For Comment          |
| SOP  | Standard Operating Procedure |
| POL  | Policy Document              |
| REP  | Report                       |
| PLN  | Plan                         |
| LOG  | Log                          |

# 5. Document Numbering

Every document must have a unique sequential number.

Format:

001

002

003

Rules:

- Numbers must be unique.
- Existing numbers must never be reused.
- Archived documents keep their original number.

# 6. Title Naming Rules

Document titles must follow these rules:

- Use lowercase letters.
- Use kebab-case.
- Do not use spaces.
- Keep titles descriptive and clear.

Correct:

system-architecture-overview.md

Incorrect:

System Architecture Final Version.md

# 7. Document ID Rules

Every document must contain a unique ID inside its metadata header.

Example:

id: MEHKAM-ENG-ADR-001

Document ID rules:

- ID must match the filename.
- ID cannot be changed after creation.
- ID remains constant during the document lifecycle.

# 8. Naming Examples

## Governance Document

Mehkam-GOV-POL-001-decision-making-policy.md

## Strategy Document

Mehkam-STR-DOC-001-investment-strategy.md

## Engineering Decision

Mehkam-ENG-ADR-001-database-selection.md

## Product Requirement

CHASHA-PRD-PRD-001-customer-order-flow.md

## Design System Document

CHASHA-DSC-DOC-001-design-system-foundation.md

# 9. Naming Rules Enforcement

## Rule 1

No documentation file can exist without a valid document ID.

## Rule 2

All documents must follow the official naming format.

## Rule 3

Documents that do not follow this standard must be renamed before approval.

## Rule 4

Deprecated documents must be archived instead of deleted.

# Final Statement

This naming convention is mandatory for all documentation created inside Mehkam Holding and all subsidiary companies.

Every document must have a clear identity, ownership, and lifecycle.

---

# Document History

| Version | Date       | Author       | Description                                      |
| ------- | ---------- | ------------ | ------------------------------------------------ |
| 1.0.0   | 2026-07-25 | Erfan Abouei | Initial documentation naming convention standard |
