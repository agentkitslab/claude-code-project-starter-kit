# Claude Code Project Starter Kit — Free Version

A copy-ready free starter template for setting up Claude Code inside a software project.

This repo is a practical baseline for developers who want Claude Code to follow project rules, testing expectations, security boundaries, and repeatable workflows.

> Not affiliated with Anthropic. Claude Code access is not included.

## What is included

```text
.
├── CLAUDE.md
├── CLAUDE.local.md.example
├── .mcp.json.example
└── .claude/
    ├── settings.json
    ├── rules/
    │   ├── api-conventions.md
    │   ├── code-style.md
    │   ├── docs.md
    │   ├── security.md
    │   └── testing.md
    ├── commands/
    │   ├── fix-issue.md
    │   └── review.md
    ├── agents/
    │   ├── code-reviewer.md
    │   └── security-auditor.md
    └── hooks/
        ├── post-edit-reminder.sh
        └── validate-bash.sh
```

## Quick start

```bash
# Copy this template into an existing project
cp -R . /path/to/your-project/
cd /path/to/your-project

# Keep local private notes out of git
cp CLAUDE.local.md.example CLAUDE.local.md

# Optional: copy MCP example and customize locally
cp .mcp.json.example .mcp.json

# Start Claude Code from the project root
claude
```

## Recommended first prompt

```text
Read CLAUDE.md and all files under .claude/. Summarize the project rules, available commands, agents, hooks, and safety boundaries before making changes.
```

## Why use this

Claude Code works best when your project gives it stable context and explicit boundaries.

This template helps with:

- Consistent project instructions via `CLAUDE.md`
- Modular rules for code, tests, security, API conventions, and docs
- Review-first workflows through reusable commands
- Safer autonomous coding via hook examples
- Avoiding accidental exposure of secrets and local configuration

## Upgrade path

The paid Starter package adds:

- More commands: planning, docs update, release checklist
- More agents: test designer, docs writer, release manager
- Deploy skill example
- Structure diagram and commercial-use docs
- Packaged ZIP for immediate reuse

Suggested paid version: **Claude Code Project Starter Kit — Starter ($9)**.

## Security notes

- Do not commit `.env`, real `.mcp.json`, API keys, SSH keys, cookies, or private customer data.
- Review `settings.json` permissions before trusting it in your own project.
- Hooks are examples. Adapt them to your shell, OS, and project conventions.
- Human approval is still required for production deploys, public releases, credential changes, and destructive commands.

## License

MIT for the free template files in this repository.
