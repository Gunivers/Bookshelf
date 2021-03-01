#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:view/aimed_entity
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#view
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

scoreboard players operation @s glib.targetId = @s glib.id
tag @s add Executor
function glib:id/check_parent
kill @e[tag=glib.aimedEntity,tag=glib.parentId.match]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["glib","glib.raycastEntity.new"]}
tp @e[tag=glib.raycastEntity.new] @s
execute at @s run tp @e[tag=glib.raycastEntity.new] ~ ~1.7 ~

# CONFIG: glib.var0 -> Range*10 (10 blocs -> glib.var0 = 100)
scoreboard players set @e[tag=glib.raycastEntity.new] glib.var0 1000
# END CONFIG
execute as @e[tag=glib.raycastEntity.new] at @s run function glib:view/aimed_entity/child/aimed_entity_raycast
execute as @e[tag=glib.raycastEntity.new] at @s run tag @e[tag=!glib.raycastEntity.new,distance=..0.1,sort=nearest,limit=1] add glib.aimedEntity
execute at @e[tag=glib.raycastEntity.new] run scoreboard players operation @e[tag=glib.aimedEntity] glib.parentId = @s glib.id
kill @e[tag=glib.raycastEntity.new]
tag @s remove Executor
