# NAME: LGdir
# PATH: bs.system:lgdir

# AUTHOR: Leirof

# VERSION: 3.0
# MINECRAFT: 1.13+

# NOTE: This system is just an example of what you can do with our library.
#       By executing this function on every pleyers, each time they will use a carrot_on_a_stick, a basic projectile will be shot.
#       It is recommended to create your own function/command-block system that reproduce this function to adapt it to your project.

# INIT
#____________________________________________________________________________________________________

scoreboard objectives add lgdir.trigger minecraft.used:minecraft.carrot_on_a_stick

# CODE:
#____________________________________________________________________________________________________

# Summon the projectile when the item is right-clicked
execute at @a[scores={lgdir.trigger=1}] run summon marker ~ ~ ~ {Tags:["lgdir","lgdir.projectile","Debug","bs.debug.move.by_vector"]}
execute at @a[scores={lgdir.trigger=1}] run playsound minecraft:item.trident.throw master @a[distance=..15] ~ ~ ~ 2 2 1

# TP of the projectile on the shooting player to get his orientation (the summon command place the entity in default orientation)
execute as @e[tag=lgdir.projectile,tag=!lgdir.old] at @s run tp @s @p[scores={lgdir.trigger=1}]

# Setting projectile's lifetime to 10 secondes
scoreboard players set @e[tag=lgdir.projectile,scores={bs.lifetime=0..}] bs.lifetime -201

# Visual and sound effects
execute at @a[scores={lgdir.trigger=1}] run tp @e[tag=lgdir.projectile,tag=!lgdir.old,limit=1,sort=nearest] @s
execute at @a[scores={lgdir.trigger=1}] run tp @e[tag=lgdir.projectile,tag=!lgdir.old,limit=1,sort=nearest] ~ ~1.7 ~

# Resetting the trigger
scoreboard players set @a lgdir.trigger 0

# Getting projectile vector
execute as @e[tag=lgdir.projectile,tag=!lgdir.old] at @s run function bs.vector:classic/get_by_actual_orientation 

# Multiplying the speed of the projectile
scoreboard players operation @e[tag=lgdir.projectile,tag=!lgdir.old] bs.vectorX *= 2 bs.const
scoreboard players operation @e[tag=lgdir.projectile,tag=!lgdir.old] bs.vectorY *= 2 bs.const
scoreboard players operation @e[tag=lgdir.projectile,tag=!lgdir.old] bs.vectorZ *= 2 bs.const

# Setting collision to type "bounce on everything"
scoreboard players set @e[tag=lgdir.projectile,tag=!lgdir.old] bs.collision 1

execute as @e[tag=lgdir.projectile] run function bs.move:by_vector
execute at @e[tag=lgdir.projectile] run particle dust 1 0 0 0.5 ~ ~ ~ 0.01 0.01 0.01 0 5 force


# Identity projectiles as old 
tag @e[tag=lgdir.projectile] add lgdir.old