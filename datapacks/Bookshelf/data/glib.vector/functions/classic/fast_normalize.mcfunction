#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/normalize
# Documentation: https://glib-core.readthedocs.io//entity#vector
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

scoreboard objectives add bs.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add bs.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add bs.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=bs.config.override] run scoreboard players set vector.fastNormalization.lenght bs.config 1000
tag @s[tag=bs.config.override] remove bs.config.override

#__________________________________________________
# CODE

scoreboard players operation vector.fastNormalize.X glib = @s bs.vectorX
scoreboard players operation vector.fastNormalize.Y glib = @s bs.vectorY
scoreboard players operation vector.fastNormalize.Z glib = @s bs.vectorZ

execute if score vector.fastNormalize.X glib matches ..-1 run scoreboard players operation vector.fastNormalize.X glib *= -1 bs.const
execute if score vector.fastNormalize.Y glib matches ..-1 run scoreboard players operation vector.fastNormalize.Y glib *= -1 bs.const
execute if score vector.fastNormalize.Z glib matches ..-1 run scoreboard players operation vector.fastNormalize.Z glib *= -1 bs.const

scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.X glib
execute if score vector.fastNormalize.Y glib > vector.fastNormalize.max glib run scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.Y glib
execute if score vector.fastNormalize.Z glib > vector.fastNormalize.max glib run scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.Z glib

scoreboard players operation @s bs.vectorX *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vectorY *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vectorZ *= vector.fastNormalization.lenght bs.config

scoreboard players operation @s bs.vectorX /= vector.fastNormalize.max glib
scoreboard players operation @s bs.vectorY /= vector.fastNormalize.max glib
scoreboard players operation @s bs.vectorZ /= vector.fastNormalize.max glib

scoreboard players set @s bs.res0 1000
scoreboard players operation @s bs.res0 *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.res0 /= vector.fastNormalize.max glib
