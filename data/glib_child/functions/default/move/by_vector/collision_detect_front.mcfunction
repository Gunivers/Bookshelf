tag @s add glib.collisionFront

summon area_effect_cloud ~ ~ ~ {Invisible:1,Tags:["Glib","glib.collision.detection"]}
execute at @s as @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] run function glib_acc:10-3/location/get
execute store result entity @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] Pos[0] double 0.001 run scoreboard players operation @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] LocX += @s glib.var0
execute store result entity @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] Pos[1] double 0.001 run scoreboard players operation @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] LocY += @s glib.var1
execute store result entity @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] Pos[2] double 0.001 run scoreboard players operation @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] LocZ += @s glib.var2

execute at @e[type=area_effect_cloud,tag=glib.collision.detection,limit=1,sort=nearest] if block ~ ~ ~ #glib_child:move/by_vector/ignore_hitbox run tag @s remove glib.collisionFront
tag @s[scores={VectorX=0}] remove glib.collisionFront


#DEBUG
execute if entity @s[tag=Debug] at @e[tag=glib.collision.detection] run summon falling_block ~-0.01 ~-0.51 ~-0.46 {BlockState:{Name:"oak_button"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# execute at @s[tag=glib.collisionFront,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"coal_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG

kill @e[tag=glib.collision.detection]
