---
applyTo: "**/*.{ex,exs}"
---

- Follow the repository's Phoenix, LiveView, and Ecto conventions; keep domain logic in the appropriate context rather than in controllers or LiveViews.
- Validate external input with changesets and explicit types. Return actionable errors; do not hide failures behind broad rescue/catch blocks or success-shaped defaults.
- Keep persistence changes reversible with migrations, and cover schema constraints and context behavior with ExUnit tests.
- Preserve the boundary between the Elixir application and the Python inference service; validate and handle its response as untrusted input.
- Run the narrow relevant ExUnit tests and formatter checks for each change. Update these commands to match the repository scripts as they are established.
