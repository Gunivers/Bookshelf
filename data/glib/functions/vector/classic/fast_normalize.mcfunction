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

# Input: glib.vectorX (score dummy)
# Input: glib.vectorY (score dummy)
# Input: glib.vectorZ (score dummy)

# Output: glib.vectorX (score dummy)
# Output: glib.vectorY (score dummy)
# Output: glib.vectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add glib.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add glib.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=glib.config.override] run scoreboard players set vector.fastNormalization.lenght glib.config 1000

#__________________________________________________
# CODE

scoreboard players operation vector.fastNormalize.X glib = @s glib.vectorX
scoreboard players operation vector.fastNormalize.Y glib = @s glib.vectorY
scoreboard players operation vector.fastNormalize.Z glib = @s glib.vectorZ

execute if score vector.fastNormalize.X glib matches ..-1 run scoreboard players operation vector.fastNormalize.X glib *= -1 glib.const
execute if score vector.fastNormalize.Y glib matches ..-1 run scoreboard players operation vector.fastNormalize.Y glib *= -1 glib.const
execute if score vector.fastNormalize.Z glib matches ..-1 run scoreboard players operation vector.fastNormalize.Z glib *= -1 glib.const

scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.X glib
execute if score vector.fastNormalize.Y glib > vector.fastNormalize.max glib run scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.Y glib
execute if score vector.fastNormalize.Z glib > vector.fastNormalize.max glib run scoreboard players operation vector.fastNormalize.max glib = vector.fastNormalize.Z glib

scoreboard players operation @s glib.vectorX *= vector.fastNormalization.lenght glib.config
scoreboard players operation @s glib.vectorY *= vector.fastNormalization.lenght glib.config
scoreboard players operation @s glib.vectorZ *= vector.fastNormalization.lenght glib.config

scoreboard players operation @s glib.vectorX /= vector.fastNormalize.max glib
scoreboard players operation @s glib.vectorY /= vector.fastNormalize.max glib
scoreboard players operation @s glib.vectorZ /= vector.fastNormalize.max glib
