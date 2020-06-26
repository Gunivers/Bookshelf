#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/view/aimed_entity
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#view
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.id.target = @s glib.id
tag @s add Executor
function glib:entity/id/check_parent
kill @e[tag=AimedEntity,tag=glib.id.parent.match]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["Glib","NewRayCastEntity"]}
tp @e[tag=NewRayCastEntity] @s
execute at @s run tp @e[tag=NewRayCastEntity] ~ ~1.7 ~

# CONFIG: glib.var0 -> Range*10 (10 blocs -> glib.var0 = 100)
scoreboard players set @e[tag=NewRayCastEntity] glib.var0 1000
# END CONFIG
execute as @e[tag=NewRayCastEntity] at @s run function glib_child:entity/view/aimed_entity_raycast
execute as @e[tag=NewRayCastEntity] at @s run tag @e[tag=!NewRayCastEntity,distance=..0.1,sort=nearest,limit=1] add AimedEntity
execute at @e[tag=NewRayCastEntity] run scoreboard players operation @e[tag=AimedEntity] glib.id.parent = @s glib.id
kill @e[tag=NewRayCastEntity]
tag @s remove Executor
