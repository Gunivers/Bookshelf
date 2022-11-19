#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/length_squared
# Documentation: https://glib-core.readthedocs.io//entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: bs.vectorX (score dummy)
# Input: bs.vectorY (score dummy)
# Input: bs.vectorZ (score dummy)

# Output: bs.res0 (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add bs.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add bs.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation vector.x2 glib = @s bs.vectorX
scoreboard players operation vector.x2 glib *= @s bs.vectorX

scoreboard players operation vector.y2 glib = @s bs.vectorY
scoreboard players operation vector.y2 glib *= @s bs.vectorY

scoreboard players operation vector.z2 glib = @s bs.vectorZ
scoreboard players operation vector.z2 glib *= @s bs.vectorZ

scoreboard players operation @s bs.res0 = vector.x2 glib
scoreboard players operation @s bs.res0 += vector.y2 glib
scoreboard players operation @s bs.res0 += vector.z2 glib
