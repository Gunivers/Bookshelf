#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.view:aimed_entity
# Documentation: https://glib-core.readthedocs.io//entity#view
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.targetId = @s bs.id
tag @s add Executor
function bs.id:check_parent
kill @e[tag=bs.aimedEntity,tag=bs.parentId.match]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["glib","bs.raycastEntity.new"]}
tp @e[tag=bs.raycastEntity.new] @s
execute at @s run tp @e[tag=bs.raycastEntity.new] ~ ~1.7 ~

# CONFIG: bs.var0 -> Range*10 (10 blocs -> bs.var0 = 100)
scoreboard players set @e[tag=bs.raycastEntity.new] bs.var0 1000
# END CONFIG
execute as @e[tag=bs.raycastEntity.new] at @s run function bs.view:aimed_entity/child/aimed_entity_raycast
execute as @e[tag=bs.raycastEntity.new] at @s run tag @e[tag=!bs.raycastEntity.new,distance=..0.1,sort=nearest,limit=1] add bs.aimedEntity
execute at @e[tag=bs.raycastEntity.new] run scoreboard players operation @e[tag=bs.aimedEntity] bs.parentId = @s bs.id
kill @e[tag=bs.raycastEntity.new]
tag @s remove Executor
