---
id: MEHKAM-OPS-DOC-009
title: Markdown Documentation Standard
category: Documentation
type: Standard
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

# Markdown Documentation Standard

## Overview

This document defines the official Markdown documentation standard for Mehkam Holding and all subsidiary companies.

The purpose of this standard is to create a unified documentation system that ensures every document is:

- Consistent
- Professional
- Scalable
- Maintainable
- Easy to understand

This standard applies to:

- Mehkam Holding
- Chasha
- Phrifan
- Future subsidiary companies

# 1. Documentation Philosophy

Mehkam documentation is designed as a long-term knowledge system.

Documentation is not only a record of information. It is an organisational asset that supports:

- Decision making
- Engineering execution
- Product development
- Business operations
- Company scalability

## Core Principles

Mehkam documentation follows these principles:

- Structure before content
- Clarity before complexity
- Consistency across teams
- Single source of truth
- Continuous improvement

# 2. Standard Document Structure

Every Markdown document must follow the official Mehkam structure.

Required structure:

```text
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

# 3. Metadata Header Standard

Every Markdown document must start with a YAML metadata header.

Required format:

```yaml
---
id:
title:
category:
type:
company:
product:
department:
version:
status:
owner:
author:
reviewer:
created_at:
updated_at:
language:
tags:
related_documents:
---
```

## Required Fields

Every document must contain:

- id
- title
- category
- type
- version
- status
- owner
- author
- created_at
- updated_at
- language

## Metadata Rules

- Every document ID must be unique.
- Document IDs must never change.
- Version changes must follow versioning rules.
- Status changes must follow lifecycle rules.
- Metadata must always remain accurate.

# 4. Writing Standards

All Mehkam documentation must follow professional technical writing standards.

## Language

Rules:

- Documentation language is English.
- Australian English spelling should be used when applicable.
- Technical terminology must remain consistent.

## Writing Style

Documentation must be:

- Professional
- Objective
- Clear
- Direct
- Technical

Avoid:

- Personal opinions
- Informal language
- Ambiguous statements

Example:

Incorrect:

```text
I think this architecture is better.
```

Correct:

```text
This architecture provides better scalability and maintainability.
```

# 5. Heading Standards

Mehkam uses structured Markdown heading hierarchy.

Standard:

```md
# Main Section

## Sub Section

### Detail Section
```

Rules:

- Do not skip heading levels.
- Use headings for logical structure.
- Avoid excessive nesting.

# 6. Paragraph Standards

Paragraphs must:

- Explain one concept at a time.
- Remain concise.
- Avoid unnecessary complexity.

Large blocks of text should be divided into smaller sections.

# 7. List Standards

## Unordered Lists

Used for:

- Features
- Characteristics
- Requirements
- Options

Example:

```md
- Secure architecture
- Scalable infrastructure
- Consistent documentation
```

## Ordered Lists

Used for:

- Procedures
- Processes
- Step-by-step instructions

Example:

```md
1. Create document.
2. Review content.
3. Approve changes.
```

# 8. Table Standards

Tables must be used for structured information.

Common usage:

- Comparisons
- Specifications
- Metadata
- Tracking information

Standard:

```md
| Field   | Description                |
| ------- | -------------------------- |
| id      | Unique document identifier |
| version | Current document version   |
```

Rules:

- Tables must include headers.
- Column names must be clear.
- Avoid unnecessary complexity.

# 9. Code Block Standards

Code blocks must always include the language identifier.

Correct:

```yaml
version: 1.0.0
status: Active
```

Incorrect:

```
version: 1.0.0
status: Active
```

Supported formats:

- yaml
- json
- typescript
- javascript
- bash
- sql

# 10. Image and Asset Standards

Images and assets must follow Mehkam asset management rules.

Rules:

- Use relative paths.
- Use meaningful filenames.
- Avoid unnecessary external dependencies.

Example:

```html
<img src="../../assets/logo/Mehkam-logo.svg" />
```

# 11. Reference Standards

References should be included when additional context exists.

Possible references:

- Related documents
- External standards
- Technical resources

Example:

```md
# References

- Mehkam-OPS-DOC-006
- Related Architecture Document
```

# 12. Terminology Standards

Official terminology must remain consistent across all companies.

Examples:

Use:

- Document
- Standard
- Architecture
- Lifecycle
- Repository

Avoid:

- File note
- System idea
- Server stuff

# 13. Document History Standard

Every document must end with Document History.

Required format:

```md
# Document History

| Version | Date       | Author | Description     |
| ------- | ---------- | ------ | --------------- |
| 1.0.0   | YYYY-MM-DD | Name   | Initial version |
```

# 14. Documentation Quality Checklist

Before publishing a document, verify:

## Structure

- Metadata exists.
- Required sections exist.
- Document follows Mehkam structure.

## Content

- Information is accurate.
- Writing is clear.
- Terminology is consistent.

## Maintenance

- Version is updated.
- History is recorded.
- Ownership is defined.

# 15. Documentation Rules

## Rule 1

All Markdown documentation must follow this standard.

## Rule 2

Custom documentation structures require approval.

## Rule 3

Documentation must always have an owner.

## Rule 4

Documentation changes must follow versioning and lifecycle standards.

## Rule 5

The latest Active document version is the official source of truth.

# Final Documentation Rules

Every Mehkam document must represent professional, structured, and maintainable knowledge.

Documentation quality directly impacts:

- Engineering scalability
- Business operations
- Team alignment
- Long-term company growth

# Final Statement

The Mehkam Markdown Documentation Standard establishes a unified documentation foundation across Mehkam Holding and all future companies.

Every team must follow this standard to ensure consistent, scalable, and professional documentation.

---

# Document History

| Version | Date       | Author       | Description                             |
| ------- | ---------- | ------------ | --------------------------------------- |
| 1.0.0   | 2026-07-25 | Erfan Abouei | Initial Markdown documentation standard |
