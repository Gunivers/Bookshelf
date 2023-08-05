---
html_theme.sidebar_secondary.remove: true
---

# 🎖️ Special scores

This lib use global scores, that are automatically created:

| Scores name | Description |
|:------:|:-----------:|
| `bs.const` | Contain a huge numer of fakeplayers with constant score value |
| `bs.data` | Global data storge score. Only use it on fake players. |
| `bs.in.[0-9]` | Default score for inputs |
| `bs.out.[0-9]` | Default score for outputs |
| `bs.lifetime`| If positive (default behavior), count the number of tick the entity exist. If negative, determine the number of ticks the entity will live (killed when the score reach -1). This socre is automatically incremented each tick. |