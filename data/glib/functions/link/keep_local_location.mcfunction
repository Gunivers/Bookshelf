#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:link/keep_local_location
# Parallelizable: true
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

# Check link source
scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib_utils:default_entity

scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.vectorLeft = @s glib.link.lx
scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.vectorUp = @s glib.link.ly
scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.vectorFront = @s glib.link.lz
scoreboard players set @e[tag=glib.new,limit=1,sort=nearest] VectorSpeedLocal 1000

execute as @e[tag=glib.new,limit=1,sort=nearest] at @s run function glib:move/by_local_vector

execute positioned as @e[tag=glib.new,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @e[tag=glib.new]
