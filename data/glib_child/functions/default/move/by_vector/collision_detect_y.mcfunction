tag @s add glib.collisionY

summon area_effect_cloud ~ ~ ~ {Tags:["Glib","glib.collision.detection"]}
execute at @s as @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] run function glib_acc:10-3/location/get_y
execute store result entity @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] Pos[1] double 0.001 run scoreboard players operation @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] LocY += @s glib.var7

#Detection
execute at @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] if block ~ ~ ~ #glib_child:move/by_vector/ignore_hitbox run tag @s remove glib.collisionY
tag @s[scores={VectorY=0}] remove glib.collisionY


#DEBUG
execute if entity @s[tag=Debug] at @e[tag=glib.collision.detection] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"oak_button"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
execute at @s[tag=glib.collisionY,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG

kill @e[tag=glib.collision.detection]
