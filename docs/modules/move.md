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

```{important}
This module limits the world size to 2,147,480 to prevent scoreboard overflow.
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

```{admonition} Local velocity... 🥶 What's this?
:class: dropdown

Unlike relative velocity (canonical), this reference frame considers the entity's rotation. Therefore, when the parent entity rotates, the child entity rotates around it. For those familiar with Minecraft commands, local coordinates are available through the `^` symbol.
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

```{admonition} Local velocity... 🥶 What's this?
:class: dropdown

Unlike relative velocity (canonical), this reference frame considers the entity's rotation. Therefore, when the parent entity rotates, the child entity rotates around it. For those familiar with Minecraft commands, local coordinates are available through the `^` symbol.
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

```{function} #bs.move:tp_by_vel {scale:<scaling>,with:{}}

Teleport an entity by its velocity scores while handling collisions.

:Inputs:
  **Execution `as <entities>`**: Entity to move.

  **Scores `@s bs.vel.[x,y,z]`**: Canonical velocity vector.

  **Macro Var `scale`**: Scalar for the function’s outputs.

  **Macro Var `with` [compound]**:
  :::{list-table}
  *   - **`blocks`**&nbsp;[bool]
      - Whether the entity should collide with blocks (default: true).
  *   - **`entities`**&nbsp;[bool|string]</span>
      - Whether the entity should collide with entities (default: false). Can also be a tag that entities must have.
  *   - **`on_collision`**&nbsp;[string]
      - Function to run on collision (default: `#bs.move:on_collision/bounce`).
  *   - **`ignored_blocks`**&nbsp;[string]
      - Blocks to ignore (default: `#bs.hitbox:intangible`).
  *   - **`ignored_entities`**&nbsp;[string]
      - Entities to ignore (default: `#bs.hitbox:intangible`).
  :::


:Outputs:
  **State**: Entity is teleported according to its velocity scores.
```

::::
::::{tab-item} Local

```{function} #bs.move:tp_by_local_vel {scale:<scaling>,with:{}}

Teleport an entity by its velocity scores, using the local reference frame, while handling collisions.

:Inputs:
  **Execution `as <entities>`**: Entity to move.

  **Scores `@s bs.vel.[x,y,z]`**: Local velocity vector.

  **Macro Var `scale`**: Scalar for the function’s outputs.

  **Macro Var `with` [compound]**:
  :::{list-table}
  *   - **`blocks`**&nbsp;[bool]
      - Whether the entity should collide with blocks (default: true).
  *   - **`entities`**&nbsp;[bool|string]</span>
      - Whether the entity should collide with entities (default: false). Can also be a tag that entities must have.
  *   - **`on_collision`**&nbsp;[string]
      - Function to run on collision (default: `#bs.move:on_collision/bounce`).
  *   - **`ignored_blocks`**&nbsp;[string]
      - Blocks to ignore (default: `#bs.hitbox:intangible`).
  *   - **`ignored_entities`**&nbsp;[string]
      - Entities to ignore (default: `#bs.hitbox:intangible`).
  :::

:Outputs:
  **State**: Entity is teleported according to its local velocity scores.
```

::::
:::::

*Move a cube (block_display) by its velocity scores (uses an interaction as the hitbox):*

```mcfunction
# Once
summon minecraft:block_display ~ ~ ~ {block_state:{Name:"stone"},teleport_duration:3,transformation:[1f,0f,0f,-0.5f,0f,1f,0f,0f,0f,0f,1f,-0.5f,0f,0f,0f,1f],Passengers:[{id:"minecraft:interaction",width:1f,height:1f}]}
scoreboard players set @e[type=minecraft:block_display] bs.vel.x 100
scoreboard players set @e[type=minecraft:block_display] bs.vel.y 20
scoreboard players set @e[type=minecraft:block_display] bs.vel.z 50

# In a loop
execute as @e[type=minecraft:block_display] run function #bs.move:tp_by_vel {scale:0.001,with:{}}

# Choose between multiple collision behaviors
execute as @e[type=minecraft:block_display] run function #bs.move:tp_by_vel {scale:0.001,with:{on_collision:"#bs.move:on_collision/bounce"}}
execute as @e[type=minecraft:block_display] run function #bs.move:tp_by_vel {scale:0.001,with:{on_collision:"#bs.move:on_collision/damped_bounce"}}
execute as @e[type=minecraft:block_display] run function #bs.move:tp_by_vel {scale:0.001,with:{on_collision:"#bs.move:on_collision/slide"}}
execute as @e[type=minecraft:block_display] run function #bs.move:tp_by_vel {scale:0.001,with:{on_collision:"#bs.move:on_collision/stick"}}
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

By modifying the `on_collision` input key, you have the freedom to specify the function that triggers upon collision. However, managing the resolution yourself can be quite challenging. This is why Bookshelf provides several predefined functions:

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

Upon collision, you have the freedom to update both the velocity score that will be used in the next tick `@s bs.vel.[x,y,z]` and the remaining velocity `$move.vel_remaining.[x,y,z] bs.data`, which is always scaled by 1000. Since the module will attempt to continue moving based on the remaining velocity, it's crucial to avoid introducing a race condition.

The simplest collision resolution is to stop the movement.

*`#bs.move:on_collision/stick`*
```mcfunction
# set all components to 0 to cancel the movement
execute store result score $move.vel_remaining.x bs.data run scoreboard players set @s bs.vel.x 0
execute store result score $move.vel_remaining.y bs.data run scoreboard players set @s bs.vel.y 0
execute store result score $move.vel_remaining.z bs.data run scoreboard players set @s bs.vel.z 0
```

For sliding, we need to cancel the velocity on the axis that was hit and continue traveling the remaining distance.

*`#bs.move:on_collision/slide`*
```mcfunction
# set a component to 0 depending on the surface that was hit
execute if score $move.hit_face bs.data matches 4..5 store result score $move.vel_remaining.x bs.data run scoreboard players set @s bs.vel.x 0
execute if score $move.hit_face bs.data matches 0..1 store result score $move.vel_remaining.y bs.data run scoreboard players set @s bs.vel.y 0
execute if score $move.hit_face bs.data matches 2..3 store result score $move.vel_remaining.z bs.data run scoreboard players set @s bs.vel.z 0
```

To simplify the creation of these behaviors, there's no need to handle a local velocity directly. The vector is automatically converted before and after the collision resolution. If you need help with custom collisions, you can ask us on our [discord server](https://discord.gg/E8qq6tN)!

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
