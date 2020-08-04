tag @s add glib.collisionY

function glib_config:default_entity

scoreboard players set @e[tag=glib.new] glib.locX 0
scoreboard players operation @e[tag=glib.new] glib.locY = move.vectorY glib
scoreboard players set @e[tag=glib.new] glib.locZ 0
execute as @e[tag=glib.new] at @s run function glib_acc:10-3/location/add

#__________________________________________________
# Detection

execute at @e[type=area_effect_cloud,tag=glib.new,limit=1,sort=nearest] if block ~ ~ ~ #glib_child:move/by_vector/ignore_hitbox run tag @s remove glib.collisionY
tag @s[scores={VectorY=0}] remove glib.collisionY


# Start Debug
execute if entity @a[tag=glib.debug.move.by_vector] at @a[tag=debug] at @e[tag=glib.new,distance=..30] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"oak_button"},NoGravity:1,Time:50,Tags:["glib","glib.debug"]}
execute if entity @a[tag=glib.debug.move.by_vector] at @a[tag=debug] at @s[tag=glib.collisionY,distance=..30] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["glib","glib.debug"]}
# End Debug
