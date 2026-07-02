# FAQ

## Is this affiliated with Anthropic?

No. This is an independent template for organizing Claude Code project context. Claude Code access is not included.

## Do I need the paid Starter ZIP to use this?

No. The free repo is enough to try the pattern.

Use the paid Starter ZIP if you want a more complete copy-ready structure with extra workflows, agents, docs, and packaging already assembled.

## What problem does this solve?

Blank Claude Code projects often drift because every session starts by re-explaining the same context:

- what the project is;
- where files should go;
- which commands are safe;
- how testing and review should work;
- what actions require human approval;
- where local/private notes should live.

This template moves that recurring context into the repo.

## Will this make Claude Code fully autonomous?

No. It is not an autopilot setup.

You should still review changes, run tests, protect secrets, and keep production actions approval-gated.

The goal is consistency, not blind automation.

## What should I customize first?

Start with `CLAUDE.md`:

1. Replace the placeholder project summary.
2. Fill in your real install/test/lint/build commands.
3. Add the project structure and important modules.
4. Write down safety boundaries and approval rules.
5. Remove examples that do not match your stack.

Then adjust files under `.claude/rules/` as your workflow matures.

## What should not go into this repo?

Do not commit:

- real `.env` files;
- real `.mcp.json` with tokens;
- API keys;
- cookies;
- SSH keys;
- private customer data;
- local machine paths that expose private information.

Use `.mcp.json.example` and `CLAUDE.local.md.example` as templates only.

## When should I upgrade to the Starter ZIP?

Upgrade if you want more copy-ready pieces instead of building them yourself:

- planning workflow;
- docs update workflow;
- release checklist;
- extra agents;
- deploy checklist skill example;
- structure diagram;
- packaged ZIP for reuse.

Buy the Starter ZIP here:

<https://ko-fi.com/s/eca2427428>

## Can I use this commercially?

The free repo is MIT licensed. You can use the template files in commercial projects, subject to the license.

The paid Starter ZIP includes additional materials packaged for convenience. Check the included license/readme in the paid package before redistribution.

## Why not just use one big CLAUDE.md?

One file is fine at the beginning.

As the project grows, splitting recurring rules into smaller files makes updates easier and reduces the chance that important details get buried.

A useful pattern is:

- `CLAUDE.md` for project overview and high-level rules;
- `.claude/rules/` for style, testing, security, docs, API conventions;
- `.claude/commands/` for repeatable workflows;
- `.claude/agents/` for specialized review roles;
- `.claude/hooks/` for validation reminders or guardrails.
