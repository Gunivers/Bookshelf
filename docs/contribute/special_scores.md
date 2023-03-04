---
html_theme.sidebar_secondary.remove: true
---

# 🎖️ Special scores

This lib use global scores, that are automatically created:

| Scores name | Description |
|:------:|:-----------:|
| `bs.data` | Global data storge score. Only use it on fake players with an `#` in prefix to avoid conflicts with core systems. |
| `bs.in.[0-9]` | Default score for inputs |
| `bs.out.[0-9]` | Default score for outputs |
| `bs.config` | Allow to define the behavior of some systems |
| `bs.const` | Contain a huge numer of fakeplayers with constant score value |
| `bs.lifetime`| If positive (default behavior), count the number of tick the entity exist. If negative, determine the number of ticks the entity will live (killed when the score reach -1). This socre is automatically incremented each tick. |
| `bs.debug` | Determine the behavior of debug features |
| `bs.debug.id` | A built-in ID palced on every entities for debug purposes |