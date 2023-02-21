
#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.16.1
# Last check:

# Original path: bs.location:add
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

# Input: @s bs.loc.x (score)
# Input: @s bs.loc.y (score)
# Input: @s bs.loc.z (score)

#__________________________________________________
# INIT

scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location X","color":"aqua"}]
scoreboard objectives add bs.loc.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Y","color":"aqua"}]
scoreboard objectives add bs.loc.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation #backup.location.add.locX bs = @s bs.loc.x
scoreboard players operation #backup.location.add.locY bs = @s bs.loc.y
scoreboard players operation #backup.location.add.locZ bs = @s bs.loc.z

execute at @s run function bs.core:default_entity
tag @e[tag=bs.new,limit=1] add bs.location.add.tmp
tag @e[tag=bs.location.add.tmp] remove bs.new
execute as @e[tag=bs.location.add.tmp] at @s run function bs.location:get/accuracy/10-3

scoreboard players operation @s bs.loc.x += @e[tag=bs.location.add.tmp,limit=1] bs.loc.x
scoreboard players operation @s bs.loc.y += @e[tag=bs.location.add.tmp,limit=1] bs.loc.y
scoreboard players operation @s bs.loc.z += @e[tag=bs.location.add.tmp,limit=1] bs.loc.z
execute as @e[tag=bs.location.add.tmp] at @s run function bs.health:safe_kill

function bs.location:set/accuracy/10-3

# Restore
scoreboard players operation @s bs.loc.x = #backup.location.add.locX bs
scoreboard players operation @s bs.loc.y = #backup.location.add.locY bs
scoreboard players operation @s bs.loc.z = #backup.location.add.locZ bs
