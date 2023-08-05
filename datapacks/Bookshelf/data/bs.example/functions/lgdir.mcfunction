# NAME: LGdir
# PATH: bs.system:lgdir

# AUTHOR: Leirof

# VERSION: 3.0
# MINECRAFT: 1.13+

# NOTE: This system is just an example of what you can do with our library.
#       By executing this function on every players, each time they will use a carrot_on_a_stick, a basic projectile will be shot.
#       It is recommended to create your own function/command-block system that reproduce this function to adapt it to your project.

# INIT
#____________________________________________________________________________________________________

scoreboard objectives add lgdir.trigger minecraft.used:minecraft.carrot_on_a_stick

# CODE:
#____________________________________________________________________________________________________

# Summon the projectile when the item is right-clicked
execute at @a[scores={lgdir.trigger=1}] run summon marker ~ ~ ~ {Tags:["lgdir","lgdir.projectile","Debug","bs.debug.move.by_vector","bs.move.display_trajectory"]}
execute at @a[scores={lgdir.trigger=1}] run playsound minecraft:item.trident.throw master @a[distance=..15] ~ ~ ~ 2 2 1

# TP of the projectile on the shooting player to get his orientation (the summon command place the entity in default orientation)
execute as @e[tag=lgdir.projectile,tag=!lgdir.old] at @s run tp @s @p[scores={lgdir.trigger=1}]

# Setting projectile's lifetime to 3 secondes
scoreboard players set @e[tag=lgdir.projectile,scores={bs.lifetime=0..}] bs.lifetime -30

# Visual and sound effects
execute at @a[scores={lgdir.trigger=1}] run tp @e[tag=lgdir.projectile,tag=!lgdir.old,limit=1,sort=nearest] @s
execute at @a[scores={lgdir.trigger=1}] run tp @e[tag=lgdir.projectile,tag=!lgdir.old,limit=1,sort=nearest] ~ ~1.7 ~

# Resetting the trigger
scoreboard players set @a lgdir.trigger 0

# Getting projectile vector
execute as @e[tag=lgdir.projectile,tag=!lgdir.old] at @s run function bs.vector:get_from_orientation 

# Increasing the speed of the projectile
scoreboard players operation @e[tag=lgdir.projectile,tag=!lgdir.old] bs.vector.x *= 2 bs.const
scoreboard players operation @e[tag=lgdir.projectile,tag=!lgdir.old] bs.vector.y *= 2 bs.const
scoreboard players operation @e[tag=lgdir.projectile,tag=!lgdir.old] bs.vector.z *= 2 bs.const

# Apply gravity
scoreboard players remove @e[tag=lgdir.projectile,tag=lgdir.old] bs.vector.y 50

# Setting collision to type "bounce on everything"
scoreboard players set @e[tag=lgdir.projectile,tag=!lgdir.old] bs.opt.0 -1

# Setting projectile collision precision to 0.1 block
scoreboard players set @e[tag=lgdir.projectile] bs.opt.1 500

# Apply movement
execute as @e[tag=lgdir.projectile] run function bs.move:by_vector

# Displaying trajectory
execute at @e[tag=lgdir.projectile] run particle dust 1 0 0 1 ~ ~ ~ 0.01 0.01 0.01 0 5 force

# Identity projectiles as old 
tag @e[tag=lgdir.projectile] add lgdir.old