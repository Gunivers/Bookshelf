# NAME: LGdir
# PATH: glib:system/lgdir

# AUTHOR: Leirof

# VERSION: 3.0
# MINECRAFT: 1.13+

# NOTE: This system is just an example of what you can do with our library.
#       By executing this function on every pleyers, each time they will use a carrot_on_a_stick, a basic projectile will be shot.
#       It is recommended to create your own function/command-block system that reproduce this function to adapt it to your project.

# CODE:
#____________________________________________________________________________________________________

scoreboard objectives add UseCarrot minecraft.used:minecraft.carrot_on_a_stick
execute at @s[scores={UseCarrot=1}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Tags:["Glib","Projectile"]}
execute at @s[scores={UseCarrot=1}] run tp @e[tag=Projectile,tag=!Old,limit=1,sort=nearest] @s
execute at @s[scores={UseCarrot=1}] run tp @e[tag=Projectile,tag=!Old,limit=1,sort=nearest] ~ ~1.7 ~
scoreboard players set @s UseCarrot 0

execute as @e[tag=Projectile,tag=!Old] run function glib:vector/classic/get_by_actual_orientation 
scoreboard players set @e[tag=Projectile,tag=!Old] Collision 1

tag @e[tag=Projectile] add Old

execute as @e[tag=Projectile] run function glib:move/by_vector
execute at @e[tag=Projectile] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
