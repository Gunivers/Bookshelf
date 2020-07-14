#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:link/keep_local_location
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: <true/false/global>
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.lx dummy
scoreboard objectives add glib.link.ly dummy
scoreboard objectives add glib.link.lz dummy
scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

execute at @e[tag=glib.id.match,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["glib","glib.link.keepLocalLocation"]}
tp @e[tag=glib.link.keepLocalLocation,limit=1,sort=nearest] @e[tag=glib.id.match,limit=1,sort=nearest]

scoreboard players operation @e[tag=glib.link.keepLocalLocation,limit=1,sort=nearest] VectorLeft = @s glib.link.lx
scoreboard players operation @e[tag=glib.link.keepLocalLocation,limit=1,sort=nearest] VectorUp = @s glib.link.ly
scoreboard players operation @e[tag=glib.link.keepLocalLocation,limit=1,sort=nearest] VectorFront = @s glib.link.lz
scoreboard players set @e[tag=glib.link.keepLocalLocation,limit=1,sort=nearest] VectorSpeedLocal 1000

execute as @e[tag=glib.link.keepLocalLocation,limit=1,sort=nearest] at @s run function glib:move/by_local_vector

execute positioned as @e[tag=glib.link.keepLocalLocation,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @e[tag=glib.link.keepLocalLocation]
