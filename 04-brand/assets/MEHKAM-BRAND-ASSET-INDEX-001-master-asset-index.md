---
id: MEHKAM-BRAND-ASSET-INDEX-001
title: Mehkam Holding Master Asset Index
category: Brand
type: Standard
company: Mehkam Holding
version: 1.0.0
status: Active
owner: Mehkam Holding
author: Erfan Abouei
reviewer: Mehkam Documentation Team
created_at: 2026-08-15
updated_at: 2026-08-15
language:
  - English
tags:
  - brand
  - assets
  - index
  - governance
  - asset-management
related_documents: []
---

# Mehkam Holding Master Asset Index

---

<div align="center">
  <img src="../assets/logo/png/mehkam-symbol-white-2048w.png" alt="Mehkam Logo" width="150" />
</div>

## Overview

This document defines the centralized inventory and discovery structure for Mehkam Holding brand assets.

The Master Asset Index provides a single reference point for locating approved and maintained brand assets across the Mehkam visual identity system.

## Purpose

The index exists to:

- Provide centralized asset discovery.
- Prevent duplicate or conflicting assets.
- Identify the source location of each asset family.
- Record asset status and version.
- Support designers, engineers, documentation teams, marketing teams, and AI agents.
- Connect production assets with their governing documentation.

## Asset Domains

| Domain             | Source Location              | Status     |
| ------------------ | ---------------------------- | ---------- |
| Logo               | `04-brand/assets/logo`       | APPROVED   |
| Color              | `04-brand/assets/color`      | APPROVED   |
| Typography         | `04-brand/assets/typography` | APPROVED   |
| Icon               | `04-brand/assets/icon`       | FOUNDATION |
| Graphic            | `04-brand/graphic`           | FOUNDATION |
| Imagery            | `04-brand/imagery`           | FOUNDATION |
| Background         | `04-brand/background`        | FOUNDATION |
| Digital Components | `04-brand/components`        | FOUNDATION |

## Asset Identification

Production assets should use the Mehkam naming convention:

`MEHKAM-BRAND-ASSET-[TYPE]-[CATEGORY]-[NAME]-[VARIANT]-V[VERSION]-[DIMENSIONS]-[FORMAT]`

The exact structure may be shortened where a domain already has an established naming convention, but asset identity, version, format, and source location must remain unambiguous.

## Asset Status

### DRAFT

Asset is under development and must not be used in production.

### FOUNDATION

Asset establishes the initial system and may require further production QA before full approval.

### APPROVED

Asset is approved for production use.

### DEPRECATED

Asset remains available for historical or compatibility purposes but must not be used for new work.

### ARCHIVED

Asset is retained for record-keeping only.

## Versioning

All production asset families use Semantic Versioning.

- `MAJOR` — structural or identity-breaking change.
- `MINOR` — backward-compatible addition.
- `PATCH` — correction or metadata-level change.

## Governance

Every production asset must:

1. Have a unique identifier.
2. Follow the approved naming convention.
3. Have a defined source location.
4. Have a version.
5. Have a status.
6. Be associated with its governing system or documentation.
7. Be reviewed before being marked `APPROVED`.

## AI Agent Usage

AI agents must use this index as the discovery layer for Mehkam assets.

Agents must not invent, recreate, rename, or substitute official brand assets when an approved asset is available in the index.

When an asset is unavailable, the agent must identify the missing asset rather than silently introducing a new visual style.

## Maintenance

The Master Asset Index must be updated whenever:

- A new asset family is introduced.
- An asset receives a new production version.
- An asset is approved.
- An asset is deprecated.
- An asset location changes.
- A governing brand document changes the usage rules.

## Validation

Before release, the index must be checked for:

- Missing approved assets.
- Duplicate identifiers.
- Invalid source locations.
- Missing versions.
- Missing statuses.
- Naming convention violations.
- Unregistered production assets.

## Final Statement

The Mehkam Holding Master Asset Index is the authoritative discovery layer for the Mehkam visual asset ecosystem.
