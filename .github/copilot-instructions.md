# AIV Plant Doctor

Build a mobile-friendly decision-support app for African Indigenous Vegetable (AIV) farmers in Kenya. The initial stack is Phoenix LiveView, Elixir, PostgreSQL, and Oban, with a separate Python/FastAPI inference service.

## Project workflow

- Work on one GitHub issue at a time and keep each pull request focused on that issue.
- Read the issue and the linked product decisions before changing behavior. Treat issues #6, #7, and #8 as the approved V1 safety, diagnostic-class, and crop-taxonomy decisions.
- Reuse existing project patterns; add the smallest complete change and targeted tests.
- Keep secrets, farmer-identifying data, and unconsented images out of source control, fixtures, logs, and examples.

## Agronomic safety

- Only present crop and diagnostic classes approved for V1. Distinguish observed symptoms from confirmed causes.
- Do not invent diagnoses, evidence, sources, or treatment guidance. Recommendations must be crop- and condition-specific and supported by trusted references and expert review.
- Do not recommend treatment when evidence is insufficient or the case is unsupported. Make uncertainty explicit, request useful additional photos when appropriate, and refer serious or unresolved cases to an extension officer.
- Do not present an uncalibrated model score as a reliable probability. Keep uncertainty cases available for review and improvement without exposing personal data.
