# Security Rules

- Never read or print secrets unless the human explicitly asks and confirms scope.
- Do not commit `.env`, private keys, cookies, tokens, or local config files.
- Avoid shell pipelines that download and execute remote scripts.
- Ask before running destructive commands, deleting data, publishing releases, or force-pushing.
- Treat user data and production data as sensitive.
