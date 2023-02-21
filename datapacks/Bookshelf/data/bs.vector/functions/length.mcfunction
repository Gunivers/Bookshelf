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

# Input: bs.vector.x (score dummy)
# Input: bs.vector.y (score dummy)
# Input: bs.vector.z (score dummy)

# Output: bs.out.0 (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup of bs.in.0
scoreboard players operation vector.length.var0 bs.data = @s bs.in.0

# Get lenght^2
function bs.vector:length_squared

# sqrt(legnth^2)
scoreboard players operation @s bs.in.0 = @s bs.out.0
scoreboard players operation @s bs.in.0 *= 1000 bs.const
function bs.math:common/sqrt

# Restoring bs.in.0
scoreboard players operation @s bs.in.0 = vector.length.var0 bs
