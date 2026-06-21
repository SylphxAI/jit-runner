# JIT Runner

JIT Runner is a foundation image for Sylphx GitHub Actions runner execution. It
owns the Dockerfile, selected runner base image, Sylphx-specific tool additions,
and GHCR image publishing workflow used to supply a reusable runner image.

## Lifecycle

- State: `active`
- Layer: `foundation`
- Machine manifest: [`.doctrine/project.json`](./.doctrine/project.json)

## Goals

- Provide a reproducible GitHub Actions runner image with Sylphx-required base
  tools.
- Publish traceable GHCR image tags from `main`.
- Keep the image contract small enough that repository-specific CI behavior
  stays in the consuming repositories or central reusable workflows.

## Non-Goals

- This repository does not own GitHub Actions runner registration, autoscaling,
  queueing, credentials, or repository-specific CI policy.
- This repository does not own application build behavior for consumers of the
  runner image.
- This repository does not own enterprise doctrine, manifest schema, rollout
  planning, or org rulesets.

## Boundary

The repository owns only the reusable runner image definition and image publish
workflow. Consumers must depend on published image tags or digests, not on
undocumented implementation details of the Dockerfile or base image.

## Public Surfaces

- Runner image Dockerfile: `Dockerfile`
- Build and publish workflow: `.github/workflows/build.yml`
- Published image name: `ghcr.io/sylphxai/jit-runner`
- Human project orientation: `PROJECT.md`
- Machine-readable project manifest: `.doctrine/project.json`

## Delivery

- CI model: `legacy-ci`
- Required contexts: none declared for pull requests
- Deploy/release path: pushes to `main` build and publish GHCR image tags
  `latest` and `sha-<short-sha>`.
- Production proof: GHCR digest readback and a runner smoke check are not yet
  declared as durable release evidence.
- Recovery class: `runtime-rollback-only`

Adoption is baseline only. The current gaps are tracked in
`.doctrine/project.json`.
