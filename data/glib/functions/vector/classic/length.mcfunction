#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/length
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

# Backup of glib.var0
scoreboard players operation vector.length.var0 glib = @s glib.var0

# Get lenght^2
function glib:vector/classic/length_squared

# sqrt(legnth^2)
scoreboard players operation @s glib.var0 = @s glib.res0
function glib:math/sqrt

# Restoring glib.var0
scoreboard players operation @s glib.var0 = vector.length.var0 glib
