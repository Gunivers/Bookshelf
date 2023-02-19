#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:keep_local_location
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.lx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Local X","color":"aqua"}]
scoreboard objectives add bs.link.ly dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Local Y","color":"aqua"}]
scoreboard objectives add bs.link.lz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Local Z","color":"aqua"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link To","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Check link source
scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.core:default_entity

scoreboard players operation @e[tag=bs.new,limit=1,sort=nearest] bs.vector.left = @s bs.link.lx
scoreboard players operation @e[tag=bs.new,limit=1,sort=nearest] bs.vector.up = @s bs.link.ly
scoreboard players operation @e[tag=bs.new,limit=1,sort=nearest] bs.vector.front = @s bs.link.lz
scoreboard players set @e[tag=bs.new,limit=1,sort=nearest] VectorSpeedLocal 1000

execute as @e[tag=bs.new,limit=1,sort=nearest] at @s run function bs.move:by_local_vector

execute positioned as @e[tag=bs.new,limit=1,sort=nearest] run tp @s ~ ~ ~
kill @e[tag=bs.new]
