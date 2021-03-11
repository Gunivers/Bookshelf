#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/length_squared
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: glib.vectorX (score dummy)
# Input: glib.vectorY (score dummy)
# Input: glib.vectorZ (score dummy)

# Output: glib.res0 (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add glib.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add glib.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation vector.x2 glib = @s glib.vectorX
scoreboard players operation vector.x2 glib *= @s glib.vectorX

scoreboard players operation vector.y2 glib = @s glib.vectorY
scoreboard players operation vector.y2 glib *= @s glib.vectorY

scoreboard players operation vector.z2 glib = @s glib.vectorZ
scoreboard players operation vector.z2 glib *= @s glib.vectorZ

scoreboard players operation @s glib.res0 = vector.x2 glib
scoreboard players operation @s glib.res0 += vector.y2 glib
scoreboard players operation @s glib.res0 += vector.z2 glib
