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

# Input: bs.vectorLeft (score dummy)
# Input: bs.vectorUp (score dummy)
# Input: bs.vectorFront (score dummy)

# Output: bs.vectorLeft (score dummy)
# Output: bs.vectorUp (score dummy)
# Output: bs.vectorFront (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vectorLeft dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Left","color":"aqua"}]
scoreboard objectives add bs.vectorUp dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Up","color":"aqua"}]
scoreboard objectives add bs.vectorFront dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Front","color":"aqua"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=bs.config.override] run scoreboard players set vector.fastNormalization.lenght bs.config 1000
tag @s[tag=bs.config.override] remove bs.config.override

#__________________________________________________
# CODE

scoreboard players operation vector.fastNormalize.X bs = @s bs.vectorLeft
scoreboard players operation vector.fastNormalize.Y bs = @s bs.vectorUp
scoreboard players operation vector.fastNormalize.Z bs = @s bs.vectorFront

execute if score vector.fastNormalize.X bs matches ..-1 run scoreboard players operation vector.fastNormalize.X bs *= -1 bs.const
execute if score vector.fastNormalize.Y bs matches ..-1 run scoreboard players operation vector.fastNormalize.Y bs *= -1 bs.const
execute if score vector.fastNormalize.Z bs matches ..-1 run scoreboard players operation vector.fastNormalize.Z bs *= -1 bs.const

scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.X bs
execute if score vector.fastNormalize.Y bs > vector.fastNormalize.max bs run scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.Y bs
execute if score vector.fastNormalize.Z bs > vector.fastNormalize.max bs run scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.Z bs

scoreboard players operation @s bs.vectorLeft *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vectorUp *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vectorFront *= vector.fastNormalization.lenght bs.config

scoreboard players operation @s bs.vectorLeft /= vector.fastNormalize.max bs
scoreboard players operation @s bs.vectorUp /= vector.fastNormalize.max bs
scoreboard players operation @s bs.vectorFront /= vector.fastNormalize.max bs

scoreboard players set @s bs.res0 1000
scoreboard players operation @s bs.res0 *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.res0 /= vector.fastNormalize.max bs
