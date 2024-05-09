---
html_theme.sidebar_secondary.remove: true
---

# ♻️ Conservation principle

```{epigraph}
"Nothing is lost, nothing is created, everything is transformed"

-- Antoine Lavoisier
```

To minimize interference with scores and other data, Bookshelf aims to prevent accidental overwrites. This involves minimizing the creation of new scores, strictly forbidding score deletion, and avoiding unnecessary score rewrites whenever possible.

To achieve this, each function begins by saving its inputs and restores them at the end. This ensures that only the function outputs are altered, leaving other data intact.

Additionally, while default objectives for inputs and outputs are `bs.in` and `bs.out`, alternative ones can be used, particularly when representing entity states.

```mcfunction
# Get the position of the source entity
function bs.position:get_pos {scale:1000}

# Multiply the X coordinate by 2
scoreboard players operation @s bs.pos.x *= 2 bs.const

# Place the entity at the new position
function bs.position:set_pos {scale:.001}
```

In this exemple, the `get` function will return `bs.pos.[x,y,z]` scores, that are also used as input for the `set` function.
