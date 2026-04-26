# vima docs

standalone mintlify docs for vima.

## local preview

```bash
npx mintlify dev
```

## source of truth

these docs are synced from `philip-chen6/vima`:

- `docs.json`
- `docs/*.mdx`
- `docs/AGENT_DOCS_AUDIT.md`

when the main repo changes api, cli, mcp, or routing behavior, run:

```bash
./scripts/sync-from-vima.sh /Users/stephenhung/Documents/GitHub/vima
```

then commit and push.
