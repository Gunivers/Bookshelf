#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/normalize
# Documentation: https://bs-core.readthedocs.io//entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: bs.vector.x (score dummy)
# Input: bs.vector.y (score dummy)
# Input: bs.vector.z (score dummy)

# Output: bs.vector.x (score dummy)
# Output: bs.vector.y (score dummy)
# Output: bs.vector.z (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=bs.config.override] run scoreboard players set vector.fast_normalize.length bs.config 1000
tag @s[tag=bs.config.override] remove bs.config.override

#__________________________________________________
# CODE

scoreboard players operation #vector.fast_normalize.x bs.data = @s bs.vector.x
scoreboard players operation #vector.fast_normalize.y bs.data = @s bs.vector.y
scoreboard players operation #vector.fast_normalize.z bs.data = @s bs.vector.z

execute if score #vector.fast_normalize.x bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.x bs.data *= -1 bs.const
execute if score #vector.fast_normalize.y bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.y bs.data *= -1 bs.const
execute if score #vector.fast_normalize.z bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.z bs.data *= -1 bs.const

scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.x bs.data
execute if score #vector.fast_normalize.y bs.data > #vector.fast_normalize.max bs.data run scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.y bs.data
execute if score #vector.fast_normalize.z bs.data > #vector.fast_normalize.max bs.data run scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.z bs.data

scoreboard players operation @s bs.vector.x *= vector.fast_normalize.length bs.config
scoreboard players operation @s bs.vector.y *= vector.fast_normalize.length bs.config
scoreboard players operation @s bs.vector.z *= vector.fast_normalize.length bs.config

scoreboard players operation @s bs.vector.x /= #vector.fast_normalize.max bs.data
scoreboard players operation @s bs.vector.y /= #vector.fast_normalize.max bs.data
scoreboard players operation @s bs.vector.z /= #vector.fast_normalize.max bs.data

scoreboard players set @s bs.res0 1000
scoreboard players operation @s bs.res0 *= vector.fast_normalize.length bs.config
scoreboard players operation @s bs.res0 /= #vector.fast_normalize.max bs.data
