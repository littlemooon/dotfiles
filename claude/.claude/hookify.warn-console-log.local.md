---
name: warn-console-log
enabled: true
event: file
action: warn
conditions:
  - field: file_path
    operator: regex_match
    pattern: \.(ts|tsx)$
  - field: new_text
    operator: contains
    pattern: console.log(
---

**Debug statement detected**

Consider using the project logger instead of console.log.
Remember to remove before committing.
