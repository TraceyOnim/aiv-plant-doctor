---
name: aiv-knowledge-base
description: Use when designing, reviewing, seeding, or exposing crop, pest, disease, symptom, source, or treatment knowledge for AIV Plant Doctor.
---

# AIV Plant Doctor knowledge-base work

## Before changing data or behavior

1. Read the relevant task issue and the product decisions in issues #6, #7, and #8.
2. Confirm that each crop and diagnostic class is approved for V1. Issues #7 and #8 define the validated scope; proposed lists in planning documents are not automatically approved.
3. Check that the source and expert-review details needed for a claim are available. If they are not, leave the claim unverified rather than filling gaps from assumptions.

## Model and expose knowledge carefully

- Represent crop identity and aliases separately from pests, diseases, and observable symptoms.
- Make crop-to-condition and condition-to-symptom relationships explicit; avoid inferring a cause solely from a symptom.
- Link treatment and prevention guidance to the applicable crop and condition, with trusted references and expert-review provenance.
- Keep confidence, evidence, and severity distinct. Never treat an uncalibrated model score as a reliable probability.
- For uncertain, unsupported, or insufficient-evidence cases, do not return a confirmed cause or treatment. Preserve the uncertainty, request relevant additional observations or images, and refer serious or unresolved cases to an extension officer.
- Prefer expert-reviewed organic management guidance for the MVP. Do not invent dosage, safety, or efficacy claims.

## Verification

- Test both supported and unsupported/uncertain cases.
- Verify that searches and API responses cannot expose unapproved classes as supported recommendations.
- Keep farmer identity and image data out of public knowledge records, logs, and fixtures unless consent and a specific need are documented.
