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

# Input: bs.vectorX (score dummy)
# Input: bs.vectorY (score dummy)
# Input: bs.vectorZ (score dummy)

# Output: bs.vectorX (score dummy)
# Output: bs.vectorY (score dummy)
# Output: bs.vectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vectorX dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vectorY dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vectorZ dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=bs.config.override] run scoreboard players set vector.fastNormalization.lenght bs.config 1000
tag @s[tag=bs.config.override] remove bs.config.override

#__________________________________________________
# CODE

scoreboard players operation vector.fastNormalize.X bs = @s bs.vectorX
scoreboard players operation vector.fastNormalize.Y bs = @s bs.vectorY
scoreboard players operation vector.fastNormalize.Z bs = @s bs.vectorZ

execute if score vector.fastNormalize.X bs matches ..-1 run scoreboard players operation vector.fastNormalize.X bs *= -1 bs.const
execute if score vector.fastNormalize.Y bs matches ..-1 run scoreboard players operation vector.fastNormalize.Y bs *= -1 bs.const
execute if score vector.fastNormalize.Z bs matches ..-1 run scoreboard players operation vector.fastNormalize.Z bs *= -1 bs.const

scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.X bs
execute if score vector.fastNormalize.Y bs > vector.fastNormalize.max bs run scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.Y bs
execute if score vector.fastNormalize.Z bs > vector.fastNormalize.max bs run scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.Z bs

scoreboard players operation @s bs.vectorX *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vectorY *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vectorZ *= vector.fastNormalization.lenght bs.config

scoreboard players operation @s bs.vectorX /= vector.fastNormalize.max bs
scoreboard players operation @s bs.vectorY /= vector.fastNormalize.max bs
scoreboard players operation @s bs.vectorZ /= vector.fastNormalize.max bs

scoreboard players set @s bs.res0 1000
scoreboard players operation @s bs.res0 *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.res0 /= vector.fastNormalize.max bs
