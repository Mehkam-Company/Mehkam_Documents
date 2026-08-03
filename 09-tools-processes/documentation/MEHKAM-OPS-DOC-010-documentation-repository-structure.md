---
id: Mehkam-OPS-DOC-010
title: Documentation Repository Structure Standard
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
  - repository
  - structure
  - organization
related_documents:
  - Mehkam-OPS-DOC-001
  - Mehkam-OPS-DOC-002
  - Mehkam-OPS-DOC-009
---

<div align="center">
  <img src="../../04-brand/assets/logo/mehkam-symbol.svg" alt="Mehkam Logo" width="150" />
</div>

# Documentation Repository Structure Standard

## Overview

This document defines the official repository structure for Mehkam Holding documentation.

The purpose of this standard is to create a scalable, organized, and maintainable documentation repository that supports Mehkam Holding and all future subsidiary companies.

This structure ensures:

- Clear document organization
- Easy navigation
- Consistent documentation management
- Long-term scalability

# 1. Repository Structure

The official Mehkam Documentation Repository follows this structure:

```text
docs/

├── 00-overview
│
├── 01-strategy
│
├── 02-portfolio
│
├── 03-engineering
│
├── 04-brand
│
├── 05-operations
│
├── 06-finance
│
├── 07-legal
│
├── 08-knowledge-base
│
├── 09-tools-processes
│
└── 99-archive
```

# 2. Overview Documentation

Location:

```text
00-overview/
```

Purpose:

Contains fundamental company information.

Includes:

- Company profile
- Mission
- Vision
- Principles
- Core information

# 3. Strategy Documentation

Location:

```text
01-strategy/
```

Purpose:

Contains business and strategic documentation.

Includes:

- Business model
- Investment thesis
- Market research
- Strategic decisions
- Company strategy

# 4. Portfolio Documentation

Location:

```text
02-portfolio/
```

Purpose:

Contains information about Mehkam investments and companies.

Includes:

- Portfolio companies
- Investments
- Partnerships

# 5. Engineering Documentation

Location:

```text
03-engineering/
```

Purpose:

Contains technical knowledge and engineering standards.

Includes:

- Architecture
- Infrastructure
- Security
- Development process
- Technical decisions
- Engineering standards

# 6. Brand Documentation

Location:

```text
04-brand/
```

Purpose:

Contains all brand-related documentation.

Includes:

- Brand strategy
- Brand identity
- Design system
- Marketing
- Brand assets

# 7. Operations Documentation

Location:

```text
05-operations/
```

Purpose:

Contains operational processes and company management documents.

Includes:

- Organization
- Hiring
- Processes
- Team guidelines

# 8. Finance Documentation

Location:

```text
06-finance/
```

Purpose:

Contains financial documentation.

Includes:

- Budget
- Financial models
- Reports

# 9. Legal Documentation

Location:

```text
07-legal/
```

Purpose:

Contains legal and compliance documentation.

Includes:

- Contracts
- Policies
- Compliance

# 10. Knowledge Base

Location:

```text
08-knowledge-base/
```

Purpose:

Contains accumulated organizational knowledge.

Includes:

- Business knowledge
- Engineering knowledge
- Leadership knowledge
- Research

# 11. Tools and Processes

Location:

```text
09-tools-processes/
```

Purpose:

Contains internal standards and operational systems.

Includes:

- Documentation standards
- Automation
- Project management

# 12. Archive Structure

Location:

```text
99-archive/
```

Purpose:

Stores deprecated and historical documents.

Includes:

```text
99-archive/

├── completed
├── deprecated
└── old-versions
```

# 13. Folder Rules

## Rule 1

Every document must have a defined location.

## Rule 2

Documents must not be stored in the repository root unless they are global documents.

## Rule 3

New folders require approval before creation.

## Rule 4

Folder names must follow lowercase kebab-case naming.

Example:

Correct:

```text
technical-decisions
```

Incorrect:

```text
Technical Decisions
```

# 14. Repository Scalability Rules

The repository structure must support:

- New departments
- New companies
- New documentation categories
- Future organizational growth

# Final Statement

The Mehkam Documentation Repository Structure Standard establishes a scalable foundation for managing all organizational knowledge.

Every document must follow this structure to maintain consistency, discoverability, and long-term maintainability.

---

# Document History

| Version | Date       | Author       | Description                                         |
| ------- | ---------- | ------------ | --------------------------------------------------- |
| 1.0.0   | 2026-07-25 | Erfan Abouei | Initial documentation repository structure standard |
