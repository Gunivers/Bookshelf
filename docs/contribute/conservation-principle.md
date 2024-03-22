---
html_theme.sidebar_secondary.remove: true
---

# ♻️ Conservation principle

```{epigraph}
"Nothing is lost, nothing is created, everything is transformed"

-- Antoine Lavoisier
```

The lib must have a minimum impact on the scores and other data in order to avoid some overwritings of data. It means that we should avoid as much as possible to :

- Create new scores
- Delete scores (totally forbidden)
- Avoid unnecessary scores rewriting

To do so, each input - as well as other data used by the fonction - must be saved in the begining of the function (in a fake player for example) and restored at the end. Only the outputs of the functions should change.

:::{note}
This is a new directive, so most of the functions doesn't respect it for now. Please do not hesistate to update the existing functions in order to apply this directive.
:::

Also for scores, by default, inputs and outputs are using `bs.in` and `bs.out`. But they can use others scores when it's more appropriate, especially when you want your data to represent the state of an entity:

```mcfunction
# Get the position of the source entity
function bs.position:get_pos {scale:1000}

# Multiply the X coordinate by 2
scoreboard players operation @s bs.pos.x *= 2 bs.const

# Place the entity at the new position
function bs.position:set_pos {scale:.001}
```

In this exemple, the `get` function will return `bs.pos.[x,y,z]` scores, that are also used as input for the `set` function.
