
# Place detection heads -------------------------------------------------------

summon marker ~ ~ ~ {Tags:["bs.collision.detection.head","front"]}
summon marker ~ ~ ~ {Tags:["bs.collision.detection.head","x"]}
summon marker ~ ~ ~ {Tags:["bs.collision.detection.head","y"]}
summon marker ~ ~ ~ {Tags:["bs.collision.detection.head","z"]}

execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.rx 0
execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.ry 0
execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.rz 0

scoreboard players operation @e[tag=bs.collision.detection.head,tag=x] bs.loc.rx = #Vt.x bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=y] bs.loc.ry = #Vt.y bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=z] bs.loc.rz = #Vt.z bs.data

scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.rx = #Vt.x bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.ry = #Vt.y bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.rz = #Vt.z bs.data

execute as @e[tag=bs.collision.detection.head] at @s run function bs.location:add/scale/3


