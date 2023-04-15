
# Place detection heads -------------------------------------------------------

summon marker ~ ~1.7 ~ {Tags:["bs.collision.detection.head","front"]}
summon marker ~ ~1.7 ~ {Tags:["bs.collision.detection.head","x"]}
summon marker ~ ~1.7 ~ {Tags:["bs.collision.detection.head","y"]}
summon marker ~ ~1.7 ~ {Tags:["bs.collision.detection.head","z"]}

execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.x 0
execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.y 0
execute as @e[tag=bs.collision.detection.head] run scoreboard players set @s bs.loc.z 0

scoreboard players operation @e[tag=bs.collision.detection.head,tag=x] bs.loc.x = #Vt.x bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=y] bs.loc.y = #Vt.y bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=z] bs.loc.z = #Vt.z bs.data

scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.x = #Vt.x bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.y = #Vt.y bs.data
scoreboard players operation @e[tag=bs.collision.detection.head,tag=front] bs.loc.z = #Vt.z bs.data

execute as @e[tag=bs.collision.detection.head] at @s run function bs.location:add/scale/3


