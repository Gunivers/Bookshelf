#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_relative_ata
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add bs.locY dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add bs.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

#tellraw @a ["",{"text":"Debug | bs.location:get_relative_ata","color":"green"}]

execute at @s run function bs.location:get
#tellraw @a [{"text":"\n \u0020 Source - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locX"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locY"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locZ"},"color":"gold"}]

scoreboard players operation AT_X glib = @s bs.locX
scoreboard players operation AT_Y glib = @s bs.locY
scoreboard players operation AT_Z glib = @s bs.locZ

function bs.location:get
#tellraw @a [{"text":"\n \u0020 Dest - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locX"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locY"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locZ"},"color":"gold"}]

scoreboard players operation @s bs.locX -= AT_X glib
scoreboard players operation @s bs.locY -= AT_Y glib
scoreboard players operation @s bs.locZ -= AT_Z glib

#tellraw @a [{"text":"\n \u0020 Res - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locX"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locY"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.locZ"},"color":"gold"}]


execute as @e[tag=bs.new] run function bs.health:safe_kill
