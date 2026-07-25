---
id: KARA-OPS-DOC-007
title: Markdown Metadata Header Standard
category: Documentation
type: Standard
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

# Markdown Metadata Header Standard

## Overview

This document defines the official metadata header format for all Markdown documentation created inside Kara Holding and its subsidiary companies.

The purpose of this standard is to create a consistent identification, ownership, versioning, and lifecycle management system for every document.

This standard applies to:

- Kara Holding
- Chasha
- Phrifan
- Future subsidiary companies


# 1. Metadata Header Philosophy

Every Markdown document must begin with a YAML metadata header.

The metadata header provides:

- Document identification
- Ownership information
- Version tracking
- Lifecycle status
- Document relationships
- Organizational context


# 2. Standard Metadata Structure

Every document must use the following metadata structure:

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


# 3. Required Metadata Fields

The following fields are mandatory for every document.


## ID

Field:

```yaml
id:
```

Purpose:

Defines the unique identifier of the document.

Rules:

- Must be unique.
- Must never change during document lifecycle.
- Must follow Kara naming convention.


Example:

```yaml
id: KARA-OPS-DOC-007
```


## Title

Field:

```yaml
title:
```

Purpose:

Defines the official document name.

Rules:

- Must match the document title.
- Must clearly describe the document purpose.


Example:

```yaml
title: Markdown Metadata Header Standard
```


## Category

Field:

```yaml
category:
```

Purpose:

Defines the document classification.

Examples:

```yaml
category: Documentation
category: Engineering
category: Product
category: Security
```


## Type

Field:

```yaml
type:
```

Purpose:

Defines the document type.

Examples:

```yaml
type: Standard
type: Policy
type: PRD
type: ADR
type: SOP
```


## Version

Field:

```yaml
version:
```

Purpose:

Defines the current document version.

Rules:

- Must follow Semantic Versioning.
- Must increase according to document changes.


Example:

```yaml
version: 1.0.0
```


## Status

Field:

```yaml
status:
```

Purpose:

Defines the current lifecycle state.

Allowed values:

```yaml
Draft
Review
Approved
Active
Deprecated
Archived
```


Example:

```yaml
status: Active
```


## Owner

Field:

```yaml
owner:
```

Purpose:

Defines the person or team responsible for document accuracy.


Example:

```yaml
owner: Kara Holding
```


## Author

Field:

```yaml
author:
```

Purpose:

Defines the creator of the document.


Example:

```yaml
author: Erfan Abouei
```


## Created At

Field:

```yaml
created_at:
```

Purpose:

Defines the creation date.


Format:

```text
YYYY-MM-DD
```


Example:

```yaml
created_at: 2026-07-25
```


## Updated At

Field:

```yaml
updated_at:
```

Purpose:

Defines the latest modification date.


Example:

```yaml
updated_at: 2026-07-25
```


## Language

Field:

```yaml
language:
```

Purpose:

Defines the official document language.


Rules:

- Documentation language is English.
- Australian English spelling should be used when applicable.


Example:

```yaml
language:
  - English
```


# 4. Optional Metadata Fields


## Company

Field:

```yaml
company:
```

Purpose:

Defines which Kara company owns the document.


Examples:

```yaml
company: Kara Holding
company: Chasha
```


## Product

Field:

```yaml
product:
```

Purpose:

Defines the related product or service.


Examples:

```yaml
product: Chasha Restaurant OS
```


## Department

Field:

```yaml
department:
```

Purpose:

Defines the responsible department.


Examples:

```yaml
department: Engineering
department: Product
department: Design
```


## Reviewer

Field:

```yaml
reviewer:
```

Purpose:

Defines the person or team responsible for document review.


Example:

```yaml
reviewer: Kara Documentation Team
```


## Tags

Field:

```yaml
tags:
```

Purpose:

Provides searchable keywords.


Example:

```yaml
tags:
  - architecture
  - documentation
  - standard
```


## Related Documents

Field:

```yaml
related_documents:
```

Purpose:

Defines connections between related documents.


Example:

```yaml
related_documents:
  - KARA-OPS-DOC-002
  - KARA-OPS-DOC-006
```


# 5. Metadata Rules


## Rule 1

Every Markdown document must include a metadata header.


## Rule 2

Required fields cannot be removed.


## Rule 3

Optional fields should be added when they provide meaningful context.


## Rule 4

Metadata values must always remain accurate.


## Rule 5

Metadata changes must follow document versioning rules.


# 6. Complete Example

```yaml
---
id: KARA-ENG-ADR-001
title: Database Architecture Decision
category: Engineering
type: ADR
company: Kara Holding
product: Platform
department: Engineering
version: 1.0.0
status: Active
owner: Engineering Team
author: Erfan Abouei
reviewer: Architecture Team
created_at: 2026-07-25
updated_at: 2026-07-25
language:
  - English
tags:
  - architecture
  - database
related_documents:
  - KARA-ENG-DOC-001
---
```


# Final Statement

The Kara Markdown Metadata Header Standard ensures every document has a consistent identity, ownership model, and lifecycle tracking system.

All Kara Holding companies must follow this metadata standard for every Markdown document.


---

# Document History

| Version | Date | Author | Description |
|---|---|---|---|
| 1.0.0 | 2026-07-25 | Erfan Abouei | Initial Markdown metadata header standard |