
#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.16.1
# Last check:

# Original path: glib:location/add
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

# Input: @s glib.locX (score)
# Input: @s glib.locY (score)
# Input: @s glib.locZ (score)

#__________________________________________________
# INIT

scoreboard objectives add glib.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add glib.locY dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add glib.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation #backup.location.add.locX glib = @s glib.locX
scoreboard players operation #backup.location.add.locY glib = @s glib.locY
scoreboard players operation #backup.location.add.locZ glib = @s glib.locZ

execute at @s run function glib_utils:default_entity
tag @e[tag=glib.new,limit=1] add glib.location.add.tmp
tag @e[tag=glib.location.add.tmp] remove glib.new
execute as @e[tag=glib.location.add.tmp] at @s run function glib:location/get/accuracy/10-3

scoreboard players operation @s glib.locX += @e[tag=glib.location.add.tmp,limit=1] glib.locX
scoreboard players operation @s glib.locY += @e[tag=glib.location.add.tmp,limit=1] glib.locY
scoreboard players operation @s glib.locZ += @e[tag=glib.location.add.tmp,limit=1] glib.locZ
execute as @e[tag=glib.location.add.tmp] at @s run function glib:health/safe_kill

function glib:location/set/accuracy/10-3

# Restore
scoreboard players operation @s glib.locX = #backup.location.add.locX glib
scoreboard players operation @s glib.locY = #backup.location.add.locY glib
scoreboard players operation @s glib.locZ = #backup.location.add.locZ glib
