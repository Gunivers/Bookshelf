#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/length
# Documentation: https://bs-core.readthedocs.io//entity#vector
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

scoreboard objectives add bs.vectorX dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vectorY dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vectorZ dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup of bs.var0
scoreboard players operation vector.length.var0 bs = @s bs.var0

# Get lenght^2
function bs.vector:classic/length_squared

# sqrt(legnth^2)
scoreboard players operation @s bs.var0 = @s bs.res0
function bs.math:sqrt

# Restoring bs.var0
scoreboard players operation @s bs.var0 = vector.length.var0 bs
