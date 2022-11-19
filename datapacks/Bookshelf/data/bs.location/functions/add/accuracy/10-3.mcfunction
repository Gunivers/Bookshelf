
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

# Input: @s bs.locX (score)
# Input: @s bs.locY (score)
# Input: @s bs.locZ (score)

#__________________________________________________
# INIT

scoreboard objectives add bs.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add bs.locY dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add bs.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation #backup.location.add.locX glib = @s bs.locX
scoreboard players operation #backup.location.add.locY glib = @s bs.locY
scoreboard players operation #backup.location.add.locZ glib = @s bs.locZ

execute at @s run function bs.core:default_entity
tag @e[tag=bs.new,limit=1] add bs.location.add.tmp
tag @e[tag=bs.location.add.tmp] remove bs.new
execute as @e[tag=bs.location.add.tmp] at @s run function bs.location:get/accuracy/10-3

scoreboard players operation @s bs.locX += @e[tag=bs.location.add.tmp,limit=1] bs.locX
scoreboard players operation @s bs.locY += @e[tag=bs.location.add.tmp,limit=1] bs.locY
scoreboard players operation @s bs.locZ += @e[tag=bs.location.add.tmp,limit=1] bs.locZ
execute as @e[tag=bs.location.add.tmp] at @s run function bs.health:safe_kill

function bs.location:set/accuracy/10-3

# Restore
scoreboard players operation @s bs.locX = #backup.location.add.locX glib
scoreboard players operation @s bs.locY = #backup.location.add.locY glib
scoreboard players operation @s bs.locZ = #backup.location.add.locZ glib
