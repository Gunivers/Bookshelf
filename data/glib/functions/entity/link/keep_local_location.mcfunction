#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/keep_local_location
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: <true/false/global>
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.l.x dummy
scoreboard objectives add glib.link.l.y dummy
scoreboard objectives add glib.link.l.z dummy
scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s glib.id.target = @s glib.link.to
function glib:entity/id/check

execute at @e[tag=glib.id.match,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Link_Keep_Local_Location"]}
tp @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] @e[tag=glib.id.match,limit=1,sort=nearest]

scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorLeft = @s glib.link.l.x
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorUp = @s glib.link.l.y
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorFront = @s glib.link.l.z
scoreboard players set @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorSpeedLocal 1000

execute as @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] at @s run function glib:entity/move/by_local_vector

execute positioned as @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @e[tag=Glib_Link_Keep_Local_Location]
