# Repository Instructions

Engineering doctrine: https://github.com/SylphxAI/doctrine. Read doctrine
`AGENTS.md`, `PRINCIPLES.md`, and `ADR.md`; load doctrine `standards/*.md` when
the task triggers them.

Read [PROJECT.md](./PROJECT.md) and
[.doctrine/project.json](./.doctrine/project.json) before changing behavior,
CI, delivery, documentation, public surfaces, persistence, security posture, or
cross-repository integrations.

This repository owns only the reusable Sylphx GitHub Actions runner image and
its GHCR publish workflow. Keep repository-specific build, deploy, and policy
logic in consumer repositories or central reusable workflows. Consumers should
depend on published image tags or digests, not Dockerfile internals.
