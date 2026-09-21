# jit-runner — local agent notes only

> **Importing into `SylphxAI/cloud` at `services/runners/`** ([one-platform program](https://github.com/SylphxAI/owner/blob/main/company/program.md)).
> Land here only fixes needed for P0. Any other change — new features,
> docs about the destination, contracts — lands in [`SylphxAI/cloud`](https://github.com/SylphxAI/cloud);
> the canonical vision and capabilities are [`docs/services/runners/`](https://github.com/SylphxAI/cloud/tree/main/docs/services/runners).

Static engineering and delivery standards load from the active Skills runtime
([SylphxAI/skills](https://github.com/SylphxAI/skills) is binding instruction
SSOT). Doctrine and Mission Control are retired historical lineage and must not
be loaded as current instruction authority.

Local truth: `PROJECT.md`.

## Boundary hazards

- Never commit secrets, tokens, `.env` files, or credentials.

## Local commands

- See `PROJECT.md` / `README.md` for repo validation commands.
- Prefer the **narrowest** affected check before full workspace runs.
- Report layers honestly: local diff · trunk FF · deploy · prod proof (do not collapse).

## Validation notes

- Prefer the **narrowest** affected check before full workspace runs.
- Report layers honestly: local diff · trunk FF · deploy · prod proof (do not collapse).
