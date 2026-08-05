---
id: Mehkam-OPS-DOC-008
title: Markdown Writing and Formatting Conventions Standard
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
  <img src="../../04-brand/assets/logo/Mehkam-symbol.svg" alt="Mehkam Logo" width="150" />

</div>

# Markdown Writing and Formatting Conventions Standard

## Overview

This document defines the official writing, formatting, and presentation standards for all Markdown documentation created inside Mehkam Holding and its subsidiary companies.

The purpose of this standard is to ensure all documentation remains:

- Professional
- Consistent
- Readable
- Scalable
- Easy to maintain

This standard applies to:

- Mehkam Holding
- Chasha
- Phrifan
- Future subsidiary companies

# 1. Writing Philosophy

Mehkam documentation follows a professional technical writing approach.

Documentation must communicate information clearly without unnecessary complexity.

The main principles are:

- Clarity over complexity
- Accuracy over assumptions
- Structure over personal style
- Consistency across all documents

# 2. Language Rules

## Official Language

All Mehkam documentation must be written in English.

Australian English spelling should be used when applicable.

## Technical Terms

Technical terminology must remain consistent across all documents.

Example:

Correct:

```text
Authentication
Authorization
Infrastructure
Architecture
```

Avoid:

```text
Login System
Access System
Server Setup
System Design
```

when referring to official technical concepts.

# 3. Tone and Writing Style

Documentation writing must be:

- Professional
- Objective
- Direct
- Clear
- Technical

Avoid:

- Personal opinions
- Informal expressions
- Emotional language
- Unclear statements

Incorrect:

```text
I think this architecture is better.
```

Correct:

```text
This architecture provides better scalability and maintainability.
```

# 4. Sentence Rules

Documentation sentences should:

- Communicate one idea at a time.
- Avoid unnecessary words.
- Use active voice where possible.

Preferred:

```text
The system validates user permissions before accessing resources.
```

Avoid:

```text
User permissions are something that should probably be checked before resources are accessed.
```

# 5. Heading Conventions

Mehkam documentation uses structured headings.

Standard hierarchy:

```md
# Main Section

## Sub Section

### Detail Section
```

Rules:

- Do not skip heading levels.
- Do not use headings only for visual size.
- Each heading must represent a logical section.

# 6. Paragraph Rules

Paragraphs must be:

- Short
- Focused
- Easy to scan

Rules:

- Avoid large blocks of text.
- Separate different concepts into different paragraphs.
- Use lists when information becomes repetitive.

# 7. List Conventions

## Unordered Lists

Use unordered lists for:

- Features
- Requirements
- Characteristics
- Examples

Example:

```md
- Fast performance
- Secure architecture
- Scalable design
```

## Ordered Lists

Use ordered lists for:

- Steps
- Processes
- Procedures

Example:

```md
1. Create the document.
2. Review the content.
3. Approve the changes.
```

# 8. Table Conventions

Tables must be used for structured information.

Recommended usage:

- Comparisons
- Metadata
- Specifications
- Status tracking

Standard format:

```md
| Field   | Description                |
| ------- | -------------------------- |
| id      | Unique document identifier |
| version | Current document version   |
```

Rules:

- Every table must have headers.
- Columns must have clear names.
- Avoid excessive table complexity.
- Use tables instead of repeated structured text.

# 9. Code Block Standards

Code blocks must always define their language when applicable.

Correct:

```yaml
version: 1.0.0
status: Active
```

Avoid:

```
version: 1.0.0
status: Active
```

Supported examples:

```yaml

```

```json

```

```typescript

```

```bash

```

```sql

```

# 10. Image and Asset References

Images must follow Mehkam asset organization rules.

Rules:

- Use relative paths.
- Use meaningful filenames.
- Avoid external image hosting when possible.

Example:

```md
<img src="../../assets/logo/Mehkam-logo.svg" />
```

# 11. Link References

Links should be descriptive.

Correct:

```md
See the Architecture Decision Record for authentication design.
```

Avoid:

```md
Click here.
```

# 12. Terminology Rules

Official terminology must remain consistent.

Examples:

Use:

```text
Document
Repository
Architecture
Standard
Lifecycle
```

Avoid replacing official terms with informal alternatives.

# 13. Do / Don't Guidelines

## Do

- Use clear headings.
- Keep documentation structured.
- Provide examples when needed.
- Maintain consistent terminology.
- Update document history.

## Don't

- Write informal explanations.
- Create custom structures without approval.
- Duplicate existing documentation.
- Use unclear naming.
- Ignore version updates.

# 14. Documentation Quality Rules

Every document must:

- Follow the Markdown structure standard.
- Include valid metadata.
- Maintain proper formatting.
- Follow naming conventions.
- Include document history.

# 15. Formatting Rules Summary

| Element       | Standard                           |
| ------------- | ---------------------------------- |
| Language      | English                            |
| Spelling      | Australian English when applicable |
| Heading Style | Markdown hierarchy                 |
| Tables        | Header required                    |
| Lists         | Use based on purpose               |
| Code Blocks   | Language identifier required       |
| Tone          | Professional and technical         |
| Structure     | Mehkam Markdown Standard             |

# Final Statement

The Mehkam Markdown Writing and Formatting Conventions Standard ensures all documentation across Mehkam Holding remains consistent, professional, and scalable.

Every current and future Mehkam company must follow these writing and formatting rules.

---

# Document History

| Version | Date       | Author       | Description                                                  |
| ------- | ---------- | ------------ | ------------------------------------------------------------ |
| 1.0.0   | 2026-07-25 | Erfan Abouei | Initial Markdown writing and formatting conventions standard |
