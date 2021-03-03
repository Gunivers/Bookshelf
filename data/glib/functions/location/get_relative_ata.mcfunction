#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/get_relative_ata
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add glib.locY dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add glib.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tellraw @a ["",{"text":"Debug | glib:location/get_relative_ata","color":"green"}]

execute at @s run function glib:location/get
tellraw @a [{"text":"\n \u0020 Source - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locX"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locY"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locZ"},"color":"gold"}]

scoreboard players operation AT_X glib = @s glib.locX
scoreboard players operation AT_Y glib = @s glib.locY
scoreboard players operation AT_Z glib = @s glib.locZ

function glib:location/get
tellraw @a [{"text":"\n \u0020 Dest - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locX"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locY"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locZ"},"color":"gold"}]

scoreboard players operation @s glib.locX -= AT_X glib
scoreboard players operation @s glib.locY -= AT_Y glib
scoreboard players operation @s glib.locZ -= AT_Z glib

tellraw @a [{"text":"\n \u0020 Res - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locX"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locY"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locZ"},"color":"gold"}]


execute as @e[tag=glib.new] run function glib:health/safe_kill
