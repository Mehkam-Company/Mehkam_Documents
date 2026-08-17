---
id: MEHKAM-BRAND-BC-001
title: Mehkam Business Card System
category: Brand
type: Standard
company: Mehkam Holding
version: 1.0.0
status: Draft
owner: Mehkam Holding
author: Erfan Abouei
reviewer: Mehkam Documentation Team
created_at: 2026-08-16
updated_at: 2026-08-16
language:
  - English
tags:
  - brand
  - business-card
  - corporate
  - employee
  - executive
  - print
  - digital
related_documents:
  - MEHKAM-GOV-DOC-001
---

# Mehkam Business Card System

---

<div align="center">
  <img src="../../../../../assets/logo/png/mehkam-symbol-white-2048w.png" alt="Mehkam Logo" width="150" />
</div>

## Overview

This document defines the official Mehkam Holding Business Card System.

The system establishes a reusable, template-driven business card structure for Mehkam personnel and portfolio-company employees.

The system is designed to provide a consistent premium corporate identity while allowing employee-specific information to be populated without redesigning the card.

# 1. Business Card Identity

| Property         | Value                  |
| ---------------- | ---------------------- |
| Organization     | Mehkam Holding         |
| Language         | English                |
| Orientation      | Vertical               |
| Format           | Standard Business Card |
| Background       | White                  |
| Logo             | Mehkam Symbol          |
| Logo Color       | Black                  |
| Visual Direction | Minimal / Luxury       |
| Website          | mehkam.ir              |

# 2. Business Card System

The Mehkam Business Card System consists of:

- Standard Business Card
- Executive Business Card
- Front Side
- Back Side
- Employee Data Template
- Digital and Print Outputs

Standard and Executive cards shall use the same core visual system.

Executive cards may use a subtle visual distinction while preserving the same brand architecture.

# 3. Card Dimensions

The final card shall use a standard business-card proportion.

Orientation:

**Vertical**

Final production dimensions shall be established during visual execution and print preparation.

# 4. Front Side

The front side is dedicated to employee identity.

It shall contain only the following information:

- Full Name
- Business / Portfolio Company
- Job Title
- Employee ID

Example structure:

```text
FULL NAME
JOB TITLE

BUSINESS

ID: MHK-0001
```

No additional contact information shall be placed on the front.

The following are excluded:

- Phone
- Email
- Address
- Social Media
- Additional company information

# 5. Back Side

The back side shall remain intentionally minimal.

It shall contain:

- Mehkam Company Name
- QR Code

The QR Code shall direct to:

`https://mehkam.ir`

No additional contact information shall be included.

# 6. Employee Information Model

The business card template shall be driven by structured employee information.

Required fields:

```text
fullName
business
jobTitle
employeeId
```

The visual template must remain unchanged when employee data changes.

Example:

```text
fullName: Erfan Abouei
business: Chasha
jobTitle: CTO
employeeId: MHK-0001
```

# 7. Employee ID

Every business card employee identity shall include a unique Employee ID.

Recommended display format:

```text
ID: MHK-0001
```

The Employee ID must be unique within the Mehkam organization.

# 8. Language

The Business Card System is English-only.

All visible card content must use English.

Persian text must not be introduced into the final business card templates.

# 9. Logo Standards

The Business Card System shall use:

**Mehkam Symbol only**

Logo treatment:

- Black logo
- White background
- No unapproved logo variants
- No decorative effects

Logo placement must follow the approved Mehkam Logo System.

# 10. Visual Standards

The Business Card must communicate:

- Minimalism
- Luxury
- Corporate credibility
- Precision
- Authority
- Timelessness

The design must prioritize whitespace and visual hierarchy.

Unnecessary information and decorative elements must be avoided.

# 11. Standard & Executive Variants

## 11.1 Standard

The Standard Business Card is intended for regular Mehkam personnel and portfolio-company employees.

It shall follow the core Business Card System without additional visual treatment.

## 11.2 Executive

The Executive Business Card is intended for leadership and executive personnel.

It shall use the same core design system with a subtle visual distinction.

The Executive variant must not become visually disconnected from the Standard system.

# 12. Digital & Print

The Business Card System shall support:

### Editable Master

- Figma

### Production Outputs

- PDF
- PNG

### Usage

- Print
- Digital

Print production specifications shall be finalized during visual execution.

# 13. Template Architecture

The Business Card must be implemented as a reusable template.

Conceptual flow:

```text
Employee Data
      ↓
Business Card Template
      ↓
Standard / Executive Variant
      ↓
Print / Digital Output
```

Employee-specific information must be replaceable without modifying the underlying design system.

# 14. Asset Structure

The Business Card assets shall follow:

```text
assets/
└── templates/
    └── documents/
        └── business-cards/
            ├── specification/
            │   └── MEHKAM-BRAND-BC-001-business-card-system.md
            ├── standard/
            ├── executive/
            └── README.md
```

# 15. Asset Naming

Business card assets shall follow the Mehkam naming convention.

Recommended pattern:

```text
mehkam-business-card-[variant]-[employee-id]-[format]-v[version]
```

Examples:

```text
mehkam-business-card-standard-MHK-0001-print-v1
mehkam-business-card-executive-MHK-0001-print-v1
mehkam-business-card-standard-MHK-0001-digital-v1
```

# 16. Design Execution

This document defines the approved structural requirements for the Business Card System.

The visual design shall be executed as a reusable Figma Master.

The Master must support:

- Standard variant
- Executive variant
- Employee data replacement
- Print output
- Digital output

# 17. Completion Criteria

The Business Card System is considered structurally complete when:

- Card orientation is defined.
- Language is defined.
- Logo usage is defined.
- Information hierarchy is defined.
- Front and back structures are defined.
- Employee ID requirements are defined.
- QR destination is defined.
- Standard and Executive variants are defined.
- Template-driven architecture is defined.
- Production formats are defined.
- Asset structure is established.
- Naming convention is established.

# 18. Related Documents

- MEHKAM-GOV-DOC-001 — Mehkam Holding Company Profile

## Final Statement

This document defines the official structural requirements of the Mehkam Business Card System.

All future Mehkam business cards shall comply with this system and must preserve the approved Mehkam Visual Identity.

---

# Document History

| Version | Date       | Author       | Description                                |
| ------- | ---------- | ------------ | ------------------------------------------ |
| 1.0.0   | 2026-08-16 | Erfan Abouei | Initial Business Card System specification |
