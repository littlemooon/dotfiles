---
name: warn-git-force
enabled: true
event: bash
pattern: git\s+push\s+.*--force|git\s+push\s+-f|git\s+reset\s+--hard
action: warn
---

**Force operation detected!**

This will rewrite history or discard changes. Ensure:
- You're not on main/master
- Team members are aware
- Remote changes won't be lost
