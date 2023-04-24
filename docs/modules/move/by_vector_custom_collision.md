---
html_theme.sidebar_secondary.remove: true
html_theme.sidebar_primary.remove: true
---

# `by_vector` custom collision

It is possible to create your own collision behavior by creating the 3 following files:

- `bs.config:move/by_vector/collision/heads/__switch__`: define the points where the detection will be done
- `bs.config:move/by_vector/collision/detection/__switch__`: define how the detection will be done (which blocks)
- `bs.config:move/by_vector/collision/behavior/__switch__`: define the behavior of the entity when a collision is detected

These function will be called in this order when `@s bs.collision` $> 0$. They allow you to call the collision functions according to the corresponding `bs.collision` score. Here is the default switchers:

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/heads/__switch__.mcfunction

execute if score @s bs.collision matches -99..-1 run function bs.move:by_vector/child/collision/heads/from_feet
execute if score @s bs.collision matches -199..-100 run function bs.move:by_vector/child/collision/heads/from_player_head
```

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/detection/__switch__.mcfunction

execute if score @s bs.collision matches ..-1 run function bs.move:by_vector/child/collision/detection/solid_block_on_detection_head
```

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/behavior/__switch__.mcfunction

execute if score @s bs.collision matches -1 run function bs.move:by_vector/child/collision/behavior/1-perfect_bounce
execute if score @s bs.collision matches -2 run function bs.move:by_vector/child/collision/behavior/2-slide
execute if score @s bs.collision matches -3 run function bs.move:by_vector/child/collision/behavior/3-stick
execute if score @s bs.collision matches -4 run function bs.move:by_vector/child/collision/behavior/4-damped_bounce
```

Here is below an example of what a `heads` function should looks like. Only the `bs.collision.detection.head` on each detection head entity in order to be correctly cleared afterward. This example is made to detect a collision of a point-like object by placing entites on 4 relevant directions : forward to detect a collision, and x, y and z to detect in which direction. As the detection is made before the movement, the detection heads are placed on the next position of the object.

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/heads/from_feet.mcfunction

# Executed on the moving object, at it's feet
# Create detection heads on the moving object
summon marker ~ ~ ~ {Tags:["bs.collision.detection.head","front"]}
summon marker ~ ~ ~ {Tags:["bs.collision.detection.head","x"]}
summon marker ~ ~ ~ {Tags:["bs.collision.detection.head","y"]}
summon marker ~ ~ ~ {Tags:["bs.collision.detection.head","z"]}

# Initializing the relative location to the object to 0
execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.x 0
execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.y 0
execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.z 0

# Vt.[x,y,z] is the current step vector used to move the entity.
# Using these vector component to compute the relative position of the detection heads x, y and z
scoreboard players operation @e[tag=bs.collision.detection.head,tag=x] bs.loc.x = #Vt.x bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=y] bs.loc.y = #Vt.y bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=z] bs.loc.z = #Vt.z bs.data

# Using the overhaul vector to compute the relative position of the detection head front (corresponding to the next moving object's position)
scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.x = #Vt.x bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.y = #Vt.y bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.z = #Vt.z bs.data

# Moving the detection heads to their relative position
execute as @e[tag=bs.collision.detection.head] at @s run function bs.location:add/scale/3
```

Heres is an example of what a `detection` function should looks like, based on the heads function above. You can change the ignore blocks and potentially try to detect several block in a specific soncifugration to create more complex mecanics.

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/detection/solid_block_on_detection_head.mcfunction

execute at @e[tag=bs.collision.detection.head,tag=front] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision
execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=x] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.x
execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=y] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.y
execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=z] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.z
```

Finally, here is few examples of what a `behavior` function should looks like.

Perfect bounce:
```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/behavior/damped_bounce.mcfunction

# The object will go in the opposite direction with the same speed on the axis it collided with.
scoreboard players operation @s[tag=bs.collision.x] bs.vector.x *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.y] bs.vector.y *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.z] bs.vector.z *= -1 bs.const
```

Stick:
```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/behavior/stick.mcfunction

# The object will stop at the first block it hits
scoreboard players set @s[tag=bs.collision] bs.vector.x 0
scoreboard players set @s[tag=bs.collision] bs.vector.y 0
scoreboard players set @s[tag=bs.collision] bs.vector.z 0
```

Dumped bounce:
```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/behavior/damped_bounce.mcfunction

# The object will bounce but will lose half of it's speed each time it bounces.
scoreboard players operation @s[tag=bs.collision.x] bs.vector.x *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.y] bs.vector.y *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.z] bs.vector.z *= -1 bs.const

scoreboard players operation @s[tag=bs.collision] bs.vector.x /= 2 bs.const
scoreboard players operation @s[tag=bs.collision] bs.vector.y /= 2 bs.const
scoreboard players operation @s[tag=bs.collision] bs.vector.z /= 2 bs.const
```

If you need help to implement such custom collision system, feel free to ask in the [discord server](https://discord.gg/E8qq6tN)!