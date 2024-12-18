---
html_theme.sidebar_secondary.remove: true
---

# 🌐 Global Resources

To minimize redundancy and enhance efficiency, the library provides shared objectives, storages, blocks, and entities that modules can leverage.

---

## Objectives

| Objectives | Description |
|------------|-------------|
| `bs.ctx`   | Contextual scoreboard for fast temporary values. Format: `#<single_letter>` |
| `bs.const` | Stores constant values. Format: `<value>` |
| `bs.data`  | Global score storage. Format:  `#<module>.<my_key>` |
| `bs.in`    | Default scores for input values. Format:  `$<module>.<feature>.<input_key>` |
| `bs.out`   | Default scores for output values. Format:  `$<module>.<feature>` or `$<module>.<feature>.<output_key>` |

---

## Storages

| Namespaces | Description |
|------------|-------------|
| `bs:ctx`   | Fast contextual storage. Keys: `x`, `y`, `z` for numeric values (store) and `_` for other data. |
| `bs:const` | Stores constant data. Path format: `<module>.<my_key>` |
| `bs:data`  | General-purpose global storage. Path format: `<module>.<my_key>` |
| `bs:in`    | Input data storage. Path format: `<module>.<feature>.<input_key>` |
| `bs:out`   | Output data storage. Path format: `<module>.<feature>` or `<module>.<feature>.<output_key>` |

---

## Blocks

These commands can be used at load time to create blocks that can be used anywhere. These blocks must be kept in loaded chunks (`-30000000 1600`).

```mcfunction
# Block for manipulating loots
setblock -30000000 0 1606 minecraft:decorated_pot

# Command block for system time (command block output)
setblock -30000000 0 1605 minecraft:repeating_command_block[facing=up]{auto:1b,Command:"help me",TrackOutput:1}
```

## Entities

Global entities are summoned with specific UUIDs, ensuring they remain accessible and avoid selector conflicts. They must persist in always-loaded chunks (`-30000000 1600`) at the end of each tick. The UUID `B5-0-0-0-0` is reserved for temporary contextual entities that must not persist beyond the current tick.

```{code-block} mcfunction
:force:
# Marker for position, arithmetic, and various utilities
execute unless entity B5-0-0-0-1 run summon minecraft:marker -30000000 0 1600 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent","smithed.entity","smithed.strict"]}

# Text display entity for interpreting text or computing transformations
execute unless entity B5-0-0-0-2 run summon minecraft:text_display -30000000 0 1600 {UUID:[I;181,0,0,2],Tags:["bs.entity","bs.persistent","smithed.entity","smithed.strict"],view_range:0f,alignment:"center"}

# Item display entity for manipulating loots or computing transformations
execute unless entity B5-0-0-0-3 run summon minecraft:item_display -30000000 0 1600 {UUID:[I;181,0,0,3],Tags:["bs.entity","bs.persistent","smithed.entity","smithed.strict"],view_range:0f,alignment:"center"}
```
