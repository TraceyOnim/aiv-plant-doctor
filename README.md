# AIV Plant Doctor

AI-powered pest and disease identification for African Indigenous Vegetable farmers.

## Overview
AIV Plant Doctor is a mobile-friendly agricultural decision-support platform that helps farmers identify pests and diseases affecting African Indigenous Vegetables, understand the damage they cause, and access expert-reviewed organic management guidance.

## Goals
- Identify common AIV pests and diseases from uploaded images
- Surface confidence and uncertainty clearly
- Link diagnoses to crop-specific, expert-reviewed recommendations
- Support sustainable and organic management decisions

## Tech stack
- Phoenix LiveView
- PostgreSQL
- Oban
- Python / FastAPI
- PyTorch
- Docker

## Status
Proposed / development planning

## Contributor guidance
- Start with one GitHub issue and submit a focused pull request for that task.
- Project-wide behavior and safety rules are in `.github/copilot-instructions.md`.
- Elixir and agronomic-data rules are in `.github/instructions/`.
- Use the `aiv-knowledge-base` skill when working on agricultural knowledge or recommendations.

## Local development

Prerequisites:
- Elixir 1.17 or later
- PostgreSQL 14 or later

Install dependencies and create, migrate, and seed the development database:

```sh
mix setup
```

`mix setup` installs Hex dependencies and frontend tooling, then prepares PostgreSQL.
The development and test database settings use `PGUSER`, `PGPASSWORD`, `PGHOST`, and
`PGDATABASE`/`PGDATABASE_TEST` environment variables when they are set.

Start the application:

```sh
mix phx.server
```

Then open `http://localhost:4000`.

Reset and recreate the development database:

```sh
mix ecto.reset
```

Run the formatter and test suite:

```sh
mix format --check-formatted
mix test
```
