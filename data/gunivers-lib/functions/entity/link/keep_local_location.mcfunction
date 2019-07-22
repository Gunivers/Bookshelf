# NAME: Move Entity By Vector
# PATH: gunivers-lib:entity/move/by_local_vector

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# INPUT:
# - VectorLeft (score dummy)
# - VectorUp (score dummy)
# - VectorFront (score dummy)
# - VectorSpeedLocal (score dummy)

# INIT:

scoreboard objectives add Glib_L_LocX dummy
scoreboard objectives add Glib_L_LocY dummy
scoreboard objectives add Glib_L_LocZ dummy

scoreboard objectives add Glib_Link_Parent dummy

# CODE:
#____________________________________________________________________________________________________
scoreboard players operation @s TargetId = @s Glib_Link_Parent

function gunivers-lib:entity/id/check

execute at @e[tag=IdMatch,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Link_Keep_Local_Location"]}
tp @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] @e[tag=IdMatch,limit=1,sort=nearest]

scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorLeft = @s Glib_L_LocX
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorUp = @s Glib_L_LocY
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorFront = @s Glib_L_LocZ
scoreboard players set @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] VectorSpeedLocal 1000

execute as @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] at @s run function gunivers-lib:entity/move/by_local_vector

execute positioned as @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @e[tag=Glib_Link_Keep_Local_Location]



