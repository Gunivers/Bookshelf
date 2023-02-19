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

# Input: bs.vector.left (score dummy)
# Input: bs.vector.up (score dummy)
# Input: bs.vector.front (score dummy)

# Output: bs.vector.left (score dummy)
# Output: bs.vector.up (score dummy)
# Output: bs.vector.front (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vector.left dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Left","color":"aqua"}]
scoreboard objectives add bs.vector.up dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Up","color":"aqua"}]
scoreboard objectives add bs.vector.front dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Front","color":"aqua"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=bs.config.override] run scoreboard players set vector.fastNormalization.lenght bs.config 1000
tag @s[tag=bs.config.override] remove bs.config.override

#__________________________________________________
# CODE

scoreboard players operation vector.fastNormalize.X bs = @s bs.vector.left
scoreboard players operation vector.fastNormalize.Y bs = @s bs.vector.up
scoreboard players operation vector.fastNormalize.Z bs = @s bs.vector.front

execute if score vector.fastNormalize.X bs matches ..-1 run scoreboard players operation vector.fastNormalize.X bs *= -1 bs.const
execute if score vector.fastNormalize.Y bs matches ..-1 run scoreboard players operation vector.fastNormalize.Y bs *= -1 bs.const
execute if score vector.fastNormalize.Z bs matches ..-1 run scoreboard players operation vector.fastNormalize.Z bs *= -1 bs.const

scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.X bs
execute if score vector.fastNormalize.Y bs > vector.fastNormalize.max bs run scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.Y bs
execute if score vector.fastNormalize.Z bs > vector.fastNormalize.max bs run scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.Z bs

scoreboard players operation @s bs.vector.left *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vector.up *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vector.front *= vector.fastNormalization.lenght bs.config

scoreboard players operation @s bs.vector.left /= vector.fastNormalize.max bs
scoreboard players operation @s bs.vector.up /= vector.fastNormalize.max bs
scoreboard players operation @s bs.vector.front /= vector.fastNormalize.max bs

scoreboard players set @s bs.res0 1000
scoreboard players operation @s bs.res0 *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.res0 /= vector.fastNormalize.max bs
