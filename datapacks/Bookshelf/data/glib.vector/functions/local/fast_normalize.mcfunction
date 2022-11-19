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

# Input: bs.vectorLeft (score dummy)
# Input: bs.vectorUp (score dummy)
# Input: bs.vectorFront (score dummy)

# Output: bs.vectorLeft (score dummy)
# Output: bs.vectorUp (score dummy)
# Output: bs.vectorFront (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vectorLeft dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Left","color":"dark_gray"}]
scoreboard objectives add bs.vectorUp dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Up","color":"dark_gray"}]
scoreboard objectives add bs.vectorFront dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Front","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=bs.config.override] run scoreboard players set vector.fastNormalization.lenght bs.config 1000
tag @s[tag=bs.config.override] remove bs.config.override

#__________________________________________________
# CODE

scoreboard players operation vector.fastNormalize.X glib = @s bs.vectorLeft
scoreboard players operation vector.fastNormalize.Y glib = @s bs.vectorUp
scoreboard players operation vector.fastNormalize.Z glib = @s bs.vectorFront

execute if score vector.fastNormalize.X glib matches ..-1 run scoreboard players operation vector.fastNormalize.X glib *= -1 bs.const
execute if score vector.fastNormalize.Y glib matches ..-1 run scoreboard players operation vector.fastNormalize.Y glib *= -1 bs.const
execute if score vector.fastNormalize.Z glib matches ..-1 run scoreboard players operation vector.fastNormalize.Z glib *= -1 bs.const

scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.X glib
execute if score vector.fastNormalize.Y glib > vector.fastNormalize.max glib run scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.Y glib
execute if score vector.fastNormalize.Z glib > vector.fastNormalize.max glib run scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.Z glib

scoreboard players operation @s bs.vectorLeft *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vectorUp *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.vectorFront *= vector.fastNormalization.lenght bs.config

scoreboard players operation @s bs.vectorLeft /= vector.fastNormalize.max glib
scoreboard players operation @s bs.vectorUp /= vector.fastNormalize.max glib
scoreboard players operation @s bs.vectorFront /= vector.fastNormalize.max glib

scoreboard players set @s bs.res0 1000
scoreboard players operation @s bs.res0 *= vector.fastNormalization.lenght bs.config
scoreboard players operation @s bs.res0 /= vector.fastNormalize.max glib
