---
html_theme.sidebar_secondary.remove: true
---

# 🌐 Shared data

In order to reduce the footprint of the library here are some shared objectives and storages that a module can use:

---

## Shared objectives

| Objectives | Description |
|------------|-------------|
| `bs.const` | Contain constant values. Scoreholder format: `<value>` |
| `bs.data` | Global score storage. Scoreholder format: `#<module>.<feature>.<my_key>` |
| `bs.in` | Default score for inputs. Scoreholder format: `$<module>.<feature>.<input_key>` |
| `bs.out` | Default score for outputs. Scoreholder format: `$<module>.<feature>` or `$<module>.<feature>.<output_key>` |

---

## Shared storages

| Storages | Description |
|----------|-------------|
| `bs:const` | Contain constant data. Path format: `<module>.<my_key>` |
| `bs:data` | Global data storage. Path format: `<module>.<feature>.<my_key>` |
| `bs:in` | Default storage for inputs. Path format: `<module>.<feature>.<input_key>` |
| `bs:out` | Default storage for outputs. Path format: `<module>.<feature>` or `<module>.<feature>.<output_key>` |
| `bs:ctx` | Fast contextual storage. Only path accepted are `x`, `y`, `z` for numbers (store) and `_` for other data. |

---

## Shared blocks

These commands can be used at load time to create blocks that can be used anywhere. These blocks must be kept in loaded chunks (at -30000000 1600).

```mcfunction
# Used to get the system time (command block output)
setblock -30000000 0 1605 minecraft:repeating_command_block[facing=up]{auto:1b,Command:"help me",TrackOutput:1}
```

## Shared entities

These commands can be used at load time to create global entities that can be used anywhere. These entities must be kept in loaded chunks (at -30000000 1600) at the end of each tick. They are summoned with specific UUIDs in order to avoid having to rely on the `@e` selector. The UUID `B5-0-0-0-0` is reserved for contextual temporary entities that should not exist at the end of a tick.

```mcfunction
# The most useful entity, used for position, arithmetic, and much more...
execute unless entity B5-0-0-0-1 run summon minecraft:marker -30000000 0 1600 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"]}

# An entity that can be used to interpret text or compute transformations
execute unless entity B5-0-0-0-2 run summon minecraft:text_display -30000000 0 1600 {UUID:[I;181,0,0,2],Tags:["bs.entity","bs.persistent"],view_range:0f}

# An entity that can be used to manipulate loots or compute transformations
execute unless entity B5-0-0-0-3 run summon minecraft:item_display -30000000 0 1600 {UUID:[I;181,0,0,3],Tags:["bs.entity","bs.persistent"],view_range:0f}

# An entity used as an UUID pointer (modify Owner then execute on origin)
execute unless entity B5-0-0-0-4 run summon minecraft:snowball -30000000 0 1600 {UUID:[I;181,0,0,4],Tags:["bs.entity","bs.persistent"],NoGravity:1b,Invulnerable:1b}

```
