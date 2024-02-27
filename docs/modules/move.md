# 🏃 Move

**`#bs.move:help`**

Make your entity move exactly the way you want them to!

```{image} /_imgs/modules/move.png
:align: center
:class: dark_light
```

```{epigraph}
"There is nothing permanent except change."

-- Heraclitus
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Canonical to local

```{function} #bs.move:canonical_to_local

Convert a canonical velocity (using the relative reference frame) into a local velocity (using the local reference frame).

:Inputs:
  **Execution `rotated as <entity>` or `rotated <h> <v>`**: Rotation used for the conversion.

  **Scores `@s bs.vel.[x,y,z]`**: Velocity to convert.

:Outputs:
  **Scores `@s bs.vel.[x,y,z]`**: Converted velocity.
```

> **Credits**: Aksiome

---

### Local to canonical

```{function} #bs.move:local_to_canonical

Convert a local velocity (using the local reference frame) into a canonical velocity (using the relative reference frame).

:Inputs:
  **Execution `rotated as <entity>` or `rotated <h> <v>`**: Rotation used for the conversion.

  **Scores `@s bs.vel.[x,y,z]`**: Velocity to convert.

:Outputs:
  **Scores `@s bs.vel.[x,y,z]`**: Converted velocity.
```

> **Credits**: Aksiome

---

### Set motion

```{function} #bs.move:set_motion_by_vel {scale:<scaling>}

Set the motion of an entity using velocity scores.

:Inputs:
  **Execution `as <entities>`**: Entity to move.

  **Scores `@s bs.vel.[x,y,z]`**: Velocity vector.

  **Macro Var `scale`**: Scalar for the function’s outputs.

:Outputs:
  **State**: Motion is applied to the given entity.
```

*Move a pig by its velocity scores:*

```mcfunction
# Once
summon minecraft:pig ~ ~ ~
scoreboard players set @e[type=minecraft:pig] bs.vel.x 50
scoreboard players set @e[type=minecraft:pig] bs.vel.y 25
scoreboard players set @e[type=minecraft:pig] bs.vel.z 0

# In a loop
execute as @e[type=minecraft:pig] run function #bs.move:set_motion_by_vel {scale:0.001}
```

> **Credits**: Aksiome

---

### Teleport

:::::{tab-set}
::::{tab-item} Canonical

```{function} #bs.move:tp_by_vel {scale:<scaling>}

Teleport an entity by its velocity scores while handling collisions.

:Inputs:
  **Execution `as <entities>`**: Entity to move.

  **Scores `@s bs.vel.[x,y,z]`**: Canonical velocity vector.

  **Scores `@s bs.[height,width]`**: Entity size (in miliblocks). Default to Minecraft size if not defined.

  **Storage `bs:in move`**:
  :::{list-table}
  *   - **`on_collision`**&nbsp;[string]
      - Function run on collision (default: `#bs.move:on_collision/slide`).
  *   - **`block_collision`**&nbsp;[bool]
      - Whether the entity should collide with blocks (default: true).
  *   - **`entity_collision`**&nbsp;[bool]
      - Whether the entity should collide with entities (default: false).
  *   - **`ignored_blocks`**&nbsp;[string]
      - Blocks to ignore (default: `#bs.hitbox:intangible`).
  *   - **`solid_entities`**&nbsp;[string]
      - Tag for entities that will be checked (default: `bs.move.is_solid`).
  :::

  **Macro Var `scale`**: Scalar for the function’s outputs.

:Outputs:
  **State**: Entity is teleported according to its velocity scores.
```

::::
::::{tab-item} Local

```{function} #bs.move:tp_by_local_vel {scale:<scaling>}

Teleport an entity by its velocity scores, using the local reference frame, while handling collisions.

:Inputs:
  **Execution `as <entities>`**: Entity to move.

  **Scores `@s bs.vel.[x,y,z]`**: Local velocity vector.

  **Scores `@s bs.[height,width]`**: Entity size (in miliblocks). Default to Minecraft size if not defined.

  **Storage `bs:in move`**:
  :::{list-table}
  *   - **`on_collision`**&nbsp;[string]
      - Function run on collision (default: `#bs.move:on_collision/slide`).
  *   - **`block_collision`**&nbsp;[bool]
      - Whether the entity should collide with blocks (default: true).
  *   - **`entity_collision`**&nbsp;[bool]
      - Whether the entity should collide with entities (default: false).
  *   - **`ignored_blocks`**&nbsp;[string]
      - Blocks to ignore (default: `#bs.hitbox:intangible`).
  *   - **`solid_entities`**&nbsp;[string]
      - Tag for entities that will be checked (default: `bs.move.is_solid`).
  :::

  **Macro Var `scale`**: Scalar for the function’s outputs.

:Outputs:
  **State**: Entity is teleported according to its local velocity scores.
```

::::
:::::

*Move a cube (block_display) by its velocity scores:*

```mcfunction
# Once
summon minecraft:block_display ~ ~ ~ {block_state:{Name:"stone"},teleport_duration:3,transformation:[1f,0f,0f,-0.5f,0f,1f,0f,0f,0f,0f,1f,-0.5f,0f,0f,0f,1f]}
scoreboard players set @e[type=minecraft:block_display] bs.vel.x 100
scoreboard players set @e[type=minecraft:block_display] bs.vel.y 20
scoreboard players set @e[type=minecraft:block_display] bs.vel.z 50
scoreboard players set @e[type=minecraft:block_display] bs.width 1000
scoreboard players set @e[type=minecraft:block_display] bs.height 1000

# In a loop
execute as @e[type=minecraft:block_display] run function #bs.move:tp_by_vel {scale:0.001}

# Choose between multiple collision behaviors
data modify storage bs:in move.on_collision set value "#bs.move:on_collision/bounce"
data modify storage bs:in move.on_collision set value "#bs.move:on_collision/damped_bounce"
data modify storage bs:in move.on_collision set value "#bs.move:on_collision/slide"
data modify storage bs:in move.on_collision set value "#bs.move:on_collision/stick"
```

```{admonition} Performance tip
:class: tip

Although this system doesn't set specific limits, it's important to note that performance is influenced by both the speed and size of the entity.
```

> **Credits**: Aksiome

---

## 🎓 Custom collisions

This module allows you to customize collision behaviors according to your specific needs.

---

By modifying the `bs:in move.on_collision` storage, you have the freedom to specify the function that triggers upon collision. However, managing the resolution yourself can be quite challenging. This is why Bookshelf provides several predefined functions:

:::{list-table}
  *   - `#bs.move:on_collision/bounce`
      - The entity will bounce on the collision surface.
  *   - `#bs.move:on_collision/damped_bounce`
      - The entity speed is reduced by 2 on each bounce.
  *   - `#bs.move:on_collision/slide`
      - The entity will stick and slide along the collision surface.
  *   - `#bs.move:on_collision/stick`
      - The entity will stop and stick to the collision surface.
:::

### How it works?

The simplest collision resolution is to stop the movement.

*`#bs.move:on_collision/stick`*
```mcfunction
# set all components to 0 to cancel the movement
scoreboard players set @s bs.vel.x 0
scoreboard players set @s bs.vel.y 0
scoreboard players set @s bs.vel.z 0
```

For sliding, we need to cancel the velocity on the axis that was hit and continue traveling the remaining distance.

*`#bs.move:on_collision/slide`*
```mcfunction
# get a vector that represent the remaining distance to travel
execute store result storage bs:ctx x double .001 run scoreboard players get $move.vel_remaining.x bs.out
execute store result storage bs:ctx y double .001 run scoreboard players get $move.vel_remaining.y bs.out
execute store result storage bs:ctx z double .001 run scoreboard players get $move.vel_remaining.z bs.out

# set a component to 0 depending on the surface that was hit
execute if score $move.hit_face bs.out matches 4..5 store result storage bs:ctx x double .001 run scoreboard players set @s bs.vel.x 0
execute if score $move.hit_face bs.out matches 0..1 store result storage bs:ctx y double .001 run scoreboard players set @s bs.vel.y 0
execute if score $move.hit_face bs.out matches 2..3 store result storage bs:ctx z double .001 run scoreboard players set @s bs.vel.z 0

# travel the remaining distance
execute at @s run function #bs.move:on_collision/continue with storage bs:ctx
```

To simplify the creation of these behaviors, there's no need to handle a local velocity directly. The vector is automatically converted before and after the collision resolution. If you need help with custom collisions, you can ask us on our [discord server](https://discord.gg/E8qq6tN)!

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
