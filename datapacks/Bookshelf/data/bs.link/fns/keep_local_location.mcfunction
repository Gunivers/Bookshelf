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
scoreboard players operation @s bs.id.target = @s bs.link.to
function bs.id:check

execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.core:entity/summon

tag @e[tag=bs.new] add bs.link.keep_local_location.setter
tag @e[tag=bs.new] remove bs.new

scoreboard players operation @e[tag=bs.link.keep_local_location.setter,limit=1,sort=nearest] bs.vector.x = @s bs.link.lx
scoreboard players operation @e[tag=bs.link.keep_local_location.setter,limit=1,sort=nearest] bs.vector.y = @s bs.link.ly
scoreboard players operation @e[tag=bs.link.keep_local_location.setter,limit=1,sort=nearest] bs.vector.z = @s bs.link.lz

execute as @e[tag=bs.link.keep_local_location.setter,limit=1,sort=nearest] at @s run function bs.move:by_local_vector

execute positioned as @e[tag=bs.link.keep_local_location.setter,limit=1,sort=nearest] run tp @s ~ ~ ~

kill @e[tag=bs.link.keep_local_location.setter]
