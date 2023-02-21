#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/length_squared
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

scoreboard players operation #vector.x2 bs.data = @s bs.vector.x
scoreboard players operation #vector.x2 bs.data *= @s bs.vector.x

scoreboard players operation #vector.y2 bs.data = @s bs.vector.y
scoreboard players operation #vector.y2 bs.data *= @s bs.vector.y

scoreboard players operation #vector.z2 bs.data = @s bs.vector.z
scoreboard players operation #vector.z2 bs.data *= @s bs.vector.z

scoreboard players operation @s bs.out.0 = #vector.x2 bs.data
scoreboard players operation @s bs.out.0 += #vector.y2 bs.data
scoreboard players operation @s bs.out.0 += #vector.z2 bs.data

scoreboard players operation @s bs.out.0 /= 1000 bs.const

