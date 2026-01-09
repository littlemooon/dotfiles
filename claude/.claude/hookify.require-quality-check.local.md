---
name: require-quality-check
enabled: false
event: stop
action: warn
conditions:
  - field: transcript
    operator: not_contains
    pattern: pnpm doctor|pnpm test|pnpm scan
---

**Quality checks not detected!**

Before finishing, consider running:
- `pnpm doctor` - Full quality check
- `pnpm test` - Run tests
- `pnpm scan` - Bug scanner

Enable this rule when you want strict enforcement.
