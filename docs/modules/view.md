# 👀 View

**`#bs.view:help`**

Execute commands based on what an entity sees.

```{image} /_imgs/modules/view.png
:align: center
:class: dark_light p-2
```

```{epigraph}

"Vision is the act of seeing things as they could be, not as they are."

-- Gretchen Rubin
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Aimed block

```{function} #bs.view:at_aimed_block

Run a command at the aligned coordinates of the block an entity is aiming at.

:Inputs:
  **Execution `as <entities>`**: Entity whose eyes determine the vision origin.

  **Macro Var `run` [string]**: Command to run at the targeted block position.
```

*Change the block you are looking at:*

```mcfunction
# Once (will run if you are targeting a block)
function #bs.view:at_aimed_block {run:"setblock ~ ~ ~ minecraft:sponge"}
```

```{admonition} Advanced usage
:class: dropdown

This system is a simplified, specific use case of the `#bs.raycast:run` function. It internally relies on it, allowing you to read its output and providing the flexibility to alter its behavior by modifying its input. [Learn more here](raycast.md)
```

> **Credits**: Aksiome

---

### Aimed entity

::::{tab-set}
:::{tab-item} As

```{function} #bs.view:as_aimed_entity

Run a command as the entity that is aimed by the current entity.

:Inputs:
  **Execution `as <entities>`**: Entity whose eyes determine the vision origin.

  **Macro Var `run` [string]**: Command to run as the targeted entity.

  **Tag**: Tag for entities that can be aimed (default: `bs.raycast.is_solid`).
```

*Run a command as the entity that you are looking at:*

```mcfunction
# Once (will run if you are targeting an entity)
function #bs.view:as_aimed_entity {run:"say I'm sorry, are you hitting on me?"}
```

:::
:::{tab-item} At

```{function} #bs.view:at_aimed_entity

Run a command at the entity that is aimed by the current entity.

:Inputs:
  **Execution `as <entities>`**: Entity whose eyes determine the vision origin.

  **Macro Var `run` [string]**: Command to run at the targeted entity.

  **Tag**: Tag for entities that can be aimed (default: `bs.raycast.is_solid`).
```

*Run a command at the entity that you are looking at:*

```mcfunction
# Once (will run if you are targeting an entity)
function #bs.view:at_aimed_entity {run:"particle minecraft:heart ~ ~2 ~ 0 0 0 0 1"}
```

:::
::::

```{admonition} Advanced usage
:class: dropdown

This system is a simplified, specific use case of the `#bs.raycast:run` function. It internally relies on it, allowing you to read its output and providing the flexibility to alter its behavior by modifying its input. [Learn more here](raycast.md)
```

```{admonition} Performance tip
:class: tip

In Minecraft, predicates can check if a player is looking at an entity. If you only need a simple player specific check without the additional functionalities of the raycast, you should consider using the [Looked entity](#looked-entity) functions.
```

> **Credits**: Aksiome

---

### Aimed point

```{function} #bs.view:at_aimed_point

Run a command at the point that was hit by the raycast.

:Inputs:
  **Execution `as <entities>`**: Entity whose eyes determine the vision origin.

  **Macro Var `run` [string]**: Command to run at the hit point.
```

*Run a command at the point you are looking at:*

```mcfunction
# Once (will run if you are aiming at a solid block or entity)
function #bs.view:at_aimed_point {run:"particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force"}
```

```{admonition} Advanced usage
:class: dropdown

This system is a simplified, specific use case of the `#bs.raycast:run` function. It internally relies on it, allowing you to read its output and providing the flexibility to alter its behavior by modifying its input. [Learn more here](raycast.md)
```

---

### Can see "as to at"

```{function} #bs.view:can_see_ata

Determine if an entity, from its current position, can have an unobstructed view to the execution position.

:Inputs:
  **Execution `as <entities>`**: Entities that are being checked.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position you want to check for visibility.

  **Storage `bs:in view.can_see_ata.ignored_blocks` [string]**: Blocks to ignore (default: `#bs.view:can_see_through`).

:Outputs:
  **Return**: Whether the check is a success or a failure (1 or 0).
```

*Run a command on entities that may be able to see you:*

```mcfunction
# Once
execute at @s as @e[distance=0.1..] if function #bs.view:can_see_ata run say You're not hiding very well...
```

> **Credits**: Aksiome, Leirof

---

### In view "as to at"

```{function} #bs.view:in_view_ata

Determine if an entity has the execution position in its view angle.

:Inputs:
  **Execution `as <entities>`**: Entities that are being checked.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position you want to check if it's within the field of view.

  **Storage `bs:in view.in_view_ata.angle` [number]**: Angle that represents the field of view (based on the world and not the fov option).
```

*Check whether the position 0 5 0 is in your field of view::*

```mcfunction
# Once
execute as @s positioned 0 5 0 run function #bs.view:in_view_ata
```

> **Credits**: Aksiome, Leirof

---

### Looked entity

::::{tab-set}
:::{tab-item} As

```{function} #bs.view:as_looked_entity

Run a command as the entity a player is looking at.

:Inputs:
  **Execution `as <players>`**: Player whose eyes determine the vision origin.

  **Macro Var `run` [string]**: Command to run as the looked at entity.

  **Tag `bs.view.is_lookable`**: Tag that must be added to entities that can be looked at.

```

*Make the armor_stand the player is looking at glow:*

```mcfunction
# Once
tag @e[type=minecraft:armor_stand] add bs.view.is_lookable
function #bs.view:as_looked_entity {run:"effect give @s minecraft:glowing 1 0 true"}
```

:::
:::{tab-item} At

```{function} #bs.view:at_looked_entity

Run a command at the entity a player is looking at.

:Inputs:
  **Execution `as <players>`**: Player whose eyes determine the vision origin.

  **Macro Var `run` [string]**: Command to run at the looked at entity.

  **Tag `bs.view.is_lookable`**: Tag that must be added to entities that can be looked at.
```

*Summon particles at the armor_stand the player is looking at:*

```mcfunction
# Once
tag @e[type=minecraft:armor_stand] add bs.view.is_lookable
function #bs.view:at_looked_entity {run:"particle minecraft:crit ~ ~2 ~ 0 0 0 0 1"}
```

:::
::::

```{admonition} Technical limitations
:class: important

As this function relies on a player specific predicate, it is exclusively designed for players. Additionally, to optimize performance, only a maximum of 255 entities are allowed to have the `bs.view.is_lookable` tag simultaneously.
```

> **Credits**: Aksiome

---

### Placed block

```{function} #bs.view:at_placed_block

Run a command at the aligned coordinates of the block to be placed.

:Inputs:
  **Execution `as <entities>`**: Entity whose eyes determine the vision origin.

  **Macro Var `run` [string]**: Command to run before the targeted block position.
```

*Set a block as if the player was placing it:*

```mcfunction
# Once (will run if you are targeting a block)
function #bs.view:at_placed_block {run:"setblock ~ ~ ~ minecraft:sponge"}
```

```{admonition} Advanced usage
:class: dropdown

This system is a simplified, specific use case of the `#bs.raycast:run` function. It internally relies on it, allowing you to read its output and providing the flexibility to alter its behavior by modifying its input. [Learn more here](raycast.md)
```

```{admonition} Avoid the advancement
:class: important

This function simulates block placement but is discouraged for use with the `placed_block` advancement due to potential differences in precision compared to Minecraft. Rapid mouse movements during the same tick may also result in the wrong block being targeted.
```

> **Credits**: Aksiome

---

<div id="comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
