# vima docs

Standalone Mintlify docs for Vima.

## local preview

```bash
npx mintlify dev
```

## source of truth

These docs are synced from `philip-chen6/vima`:

- `docs.json`
- `docs/*.mdx`
- `docs/AGENT_DOCS_AUDIT.md`

When the main repo changes API, CLI, MCP, or routing behavior, run:

```bash
./scripts/sync-from-vima.sh /Users/stephenhung/Documents/GitHub/vima
```

Then commit and push.
