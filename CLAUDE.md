# Project Operating Guide for Claude Code

## Project summary

- **Project name:** `<replace-with-project-name>`
- **Purpose:** `<one-sentence-purpose>`
- **Primary users:** `<who uses this>`
- **Repository:** `<repo-url-or-private>`

## Tech stack

| Layer | Choice | Notes |
| --- | --- | --- |
| Runtime | `<node/python/go/etc>` | `<version>` |
| Framework | `<framework>` | `<notes>` |
| Database | `<db-or-none>` | `<notes>` |
| Tests | `<test-runner>` | `<commands>` |
| Package manager | `<npm/pnpm/uv/poetry/etc>` | `<commands>` |

## Important commands

Run commands from the project root unless stated otherwise.

```bash
# Install dependencies
<install-command>

# Run tests
<test-command>

# Run lint / formatting
<lint-command>

# Start development server
<dev-command>

# Build / package
<build-command>
```

## Working rules

1. Read this file before making changes.
2. Prefer small, reviewable diffs.
3. Never commit secrets, tokens, private keys, cookies, or personal data.
4. Before changing behavior, add or update tests when feasible.
5. After edits, run the narrowest relevant test first, then broader checks.
6. If requirements are ambiguous and the wrong choice could cause data loss, security risk, legal risk, or public publishing, stop and ask.
7. Do not perform destructive actions such as deleting data, force-pushing, rotating credentials, or publishing releases without explicit human approval.

## Architecture notes

Describe the main modules and data flow here.

```text
<module-a> -> <module-b> -> <module-c>
```

## Code standards

- Keep functions focused and easy to test.
- Prefer clear names over clever abstractions.
- Avoid broad rewrites unless specifically requested.
- Match existing formatting and project conventions.
- Document non-obvious decisions near the code.

## Testing standards

- New behavior should have tests.
- Bug fixes should include regression tests when practical.
- Do not mark tests as skipped without explaining why.
- Do not weaken assertions to make tests pass.

## Security and privacy

- Treat `.env`, credentials, API keys, cookies, SSH keys, and personal data as sensitive.
- Do not paste secrets into chat, logs, README, examples, or commits.
- Use `.mcp.json.example` for examples and `.mcp.json` for local private config.
- When adding dependencies, prefer actively maintained packages and avoid unnecessary supply-chain risk.

## Release checklist

- [ ] Tests pass.
- [ ] Lint/format pass.
- [ ] No secrets in diff.
- [ ] README or docs updated if user-facing behavior changed.
- [ ] Human reviewed release notes and public-facing copy.
