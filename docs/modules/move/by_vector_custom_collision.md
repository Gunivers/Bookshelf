# `by_vector` custom collision

It is possible to create your own collision behavior. This page is here to guide you through the process.

## 1. Create a Bookshelf Config dedicated datapack

You can name this datapack as you want. The idea of creating a new one is that you can keep the main one as a zip file (more optimized) and not edit it, which allow to update it easily. The new datapack will be used to store all the configuration files.

## 2. Create switch functions

The collision type is indicated by a score, which allow to select which function will be called to manage the collision. This is done using "switchers". There is 3 differents switchers that you need to create:
- `bs.config:move/by_vector/collision/heads/__switch__`: define the points where the detection will be done
- `bs.config:move/by_vector/collision/detection/__switch__`: define how the detection will be done (which blocks)
- `bs.config:move/by_vector/collision/behavior/__switch__`: define the behavior of the entity when a collision is detected

These fonction are executed one by one in this order at the begining of each loop of the moving system. For now, let them empty, we will complete them step by step.

## 3. Heads switch function

In the heads switcher, add the folowing line:

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/heads/\_\_switch\_\_

execute if score @s bs.collision matches 1 run function bs.config:move/by_vector/collision/heads/my_custom_heads
```

This line will associate the score `bs.collisions = 1` to the custom heads function. You can only use positive scores. 0 indicate that there is no collision and negative scores are reserved for the built-in collision behaviors. So in both cases, it will never call these switchers.

You can also associate positive scores to built-in functions. These functions are the following:
- `bs.move:by_vector/child/collision/heads/from_feet`: one detection (point-like object) head is placed on the moving object's feet
- `bs.move:by_vector/child/collision/heads/from_human_eyes`: one detection (block-like object) head is placed 1.7 blocs above the moving entity (height of human-like eyes)

## 4. Create your custom heads function

Then create the associated file and write the following code:

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/heads/my_custom_heads

# This function is executed as and at the moving entity

# Create detection heads 1 block above the mocing entity
summon marker ~ ~1 ~ {Tags:["bs.collision.detection.head","front"]}
summon marker ~ ~1 ~ {Tags:["bs.collision.detection.head","x"]}
summon marker ~ ~1 ~ {Tags:["bs.collision.detection.head","y"]}
summon marker ~ ~1 ~ {Tags:["bs.collision.detection.head","z"]}

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

## 5. Detection switch function

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/detection/_\_switch_\_

execute if score @s bs.collision matches 1 run function bs.config:move/by_vector/collision/detection/my_custom_detection
```

Once again, you can associate positive scores to any function you want, including built-in ones. The built-in functions are the following:
- `bs.move:by_vector/child/collision/detection/solid_block_on_detection_head`

## 6. Create your custom detection function

You can now create your custom detection function. The main point of this function is to change the tag of bypassed blocks. For instance a laser will pass through glass, but not a ball. The `#bs.move:pass_through` tag used in built-in functions is adapted to bullets. You can create your own tag and add it to the blocks you want to bypass.

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/detection/solid_block_on_detection_head

execute at @e[tag=bs.collision.detection.head,tag=front] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision
execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=x] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.x
execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=y] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.y
execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=z] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.z
```

## 7. Behavior switch function

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/behavior/_\_switch_\_

execute if score @s bs.collision matches 1 run function bs.config:move/by_vector/collision/behavior/my_custom_behavior
```

Once again, you can associate positive scores to any function you want, including built-in ones. The built-in functions are the following:
- `bs.move:by_vector/child/collision/behavior/1-perfect_bounce`
- `bs.move:by_vector/child/collision/behavior/2-slide`
- `bs.move:by_vector/child/collision/behavior/3-stick`
- `bs.move:by_vector/child/collision/behavior/4-damped_bounce`

## 8. Create your custom behavior function

You can now create your custom behavior function. The main point of this function is to change the vector of the moving entity when it collide something. Here is an example of a behavior function:

```{code-block} mcfunction
:caption: bs.config:move/by_vector/collision/behavior/damped_bounce

# Bounce on walls
scoreboard players operation @s[tag=bs.collision.x] bs.vector.x *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.z] bs.vector.z *= -1 bs.const

# Bounce on ceil
scoreboard players operation @s[tag=bs.collision.y,scores={bs.vector.y=1..}] bs.vector.y *= -1 bs.const

# Stick on ground
scoreboard players set @s[tag=bs.collision.y,scores={bs.vector.y=..-1}] bs.vector.x 0
scoreboard players set @s[tag=bs.collision.y,scores={bs.vector.y=..-1}] bs.vector.z 0
scoreboard players set @s[tag=bs.collision.y,scores={bs.vector.y=..-1}] bs.vector.y 0
```

## 9. Enjoy!

If you need help to implement such custom collision system, feel free to ask in the [discord server](https://discord.gg/E8qq6tN)!
