# VIMA Docs

Standalone Mintlify docs for VIMA.

## Local Preview

```bash
npx mintlify dev
```

## Source Of Truth

These docs are synced from `philip-chen6/vima`:

- `docs.json`
- `docs/*.mdx`
- `docs/AGENT_DOCS_AUDIT.md`

When the main repo changes API, CLI, MCP, or routing behavior, run:

```bash
./scripts/sync-from-vima.sh /Users/stephenhung/Documents/GitHub/vima
```

Then commit and push.
