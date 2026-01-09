---
name: block-destructive-ops
enabled: true
event: bash
pattern: rm\s+-rf\s+[~/]|dd\s+if=|mkfs|format\s+[A-Z]:|>\s*/dev/
action: block
---

**Destructive operation blocked!**

This command can cause irreversible data loss. Please:
- Verify the exact path
- Use a safer approach (e.g., move to trash)
- Ensure backups exist
