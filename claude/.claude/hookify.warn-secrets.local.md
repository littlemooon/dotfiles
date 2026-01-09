---
name: warn-secrets
enabled: true
event: file
action: warn
conditions:
  - field: new_text
    operator: regex_match
    pattern: (API_KEY|SECRET|TOKEN|PASSWORD|PRIVATE_KEY)\s*[=:]\s*["'][^"']{8,}
---

**Possible hardcoded secret detected!**

Use environment variables instead:
- Add to .env (gitignored)
- Reference via process.env.VAR_NAME
- Never commit secrets to git
