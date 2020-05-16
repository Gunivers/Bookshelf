#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/keep_local_location
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have Glib_Link_Parent defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Glib_L_LocX dummy
scoreboard objectives add Glib_L_LocY dummy
scoreboard objectives add Glib_L_LocZ dummy
scoreboard objectives add Glib_Link_Parent dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s TargetId = @s Glib_Link_Parent
function glib:entity/id/check

execute at @e[tag=IdMatch,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Link_Keep_Local_Location"]}
tp @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] @e[tag=IdMatch,limit=1,sort=nearest]

scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorLeft = @s Glib_L_LocX
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorUp = @s Glib_L_LocY
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorFront = @s Glib_L_LocZ
scoreboard players set @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorSpeedLocal 1000

execute as @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] at @s run function glib:entity/move/by_local_vector

execute positioned as @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @e[tag=Glib_Link_Keep_Local_Location]
