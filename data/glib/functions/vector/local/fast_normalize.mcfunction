#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/normalize
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: glib.vectorLeft (score dummy)
# Input: glib.vectorUp (score dummy)
# Input: glib.vectorFront (score dummy)

# Output: glib.vectorLeft (score dummy)
# Output: glib.vectorUp (score dummy)
# Output: glib.vectorFront (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.vectorLeft dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Left","color":"dark_gray"}]
scoreboard objectives add glib.vectorUp dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Up","color":"dark_gray"}]
scoreboard objectives add glib.vectorFront dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Front","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=glib.config.override] run scoreboard players set vector.fastNormalization.lenght glib.config 1000
tag @s[tag=glib.config.override] remove glib.config.override

#__________________________________________________
# CODE

scoreboard players operation vector.fastNormalize.X glib = @s glib.vectorLeft
scoreboard players operation vector.fastNormalize.Y glib = @s glib.vectorUp
scoreboard players operation vector.fastNormalize.Z glib = @s glib.vectorFront

execute if score vector.fastNormalize.X glib matches ..-1 run scoreboard players operation vector.fastNormalize.X glib *= -1 glib.const
execute if score vector.fastNormalize.Y glib matches ..-1 run scoreboard players operation vector.fastNormalize.Y glib *= -1 glib.const
execute if score vector.fastNormalize.Z glib matches ..-1 run scoreboard players operation vector.fastNormalize.Z glib *= -1 glib.const

scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.X glib
execute if score vector.fastNormalize.Y glib > vector.fastNormalize.max glib run scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.Y glib
execute if score vector.fastNormalize.Z glib > vector.fastNormalize.max glib run scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.Z glib

scoreboard players operation @s glib.vectorLeft *= vector.fastNormalization.lenght glib.config
scoreboard players operation @s glib.vectorUp *= vector.fastNormalization.lenght glib.config
scoreboard players operation @s glib.vectorFront *= vector.fastNormalization.lenght glib.config

scoreboard players operation @s glib.vectorLeft /= vector.fastNormalize.max glib
scoreboard players operation @s glib.vectorUp /= vector.fastNormalize.max glib
scoreboard players operation @s glib.vectorFront /= vector.fastNormalize.max glib

scoreboard players set @s glib.res0 1000
scoreboard players operation @s glib.res0 *= vector.fastNormalization.lenght glib.config
scoreboard players operation @s glib.res0 /= vector.fastNormalize.max glib
