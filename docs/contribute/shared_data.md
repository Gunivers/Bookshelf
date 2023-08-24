---
html_theme.sidebar_secondary.remove: true
---

# 🎖️ Shared data

In order to reduce the footprint of the library here are some shared objectives and storages that a module can use:

---

## Shared objectives

| Objectives | Description |
|:------:|:-----------:|
| `bs.const` | Contain constant values. Scoreholder format: `<value>` |
| `bs.data` | Global score storage. Scoreholder format: `#<module>.<feature>.<my_key>` |
| `bs.in` | Default score for inputs. Scoreholder format: `$<module>.<feature>.<input_key>` |
| `bs.out` | Default score for outputs. Scoreholder format: `$<module>.<feature>` or `$<module>.<feature>.<output_key>` |

---

## Shared storages

| Storages | Description |
|:------:|:-----------:|
| `bs:const` | Contain constant data. Path format: `<module>.<my_key>` |
| `bs:data` | Global data storage. Path format: `<module>.<feature>.<my_key>` |
| `bs:in` | Default storage for inputs. Path format: `<module>.<feature>.<input_key>` |
| `bs:out` | Default storage for outputs. Path format: `<module>.<feature> or <module>.<feature>.<output_key>` |
