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

# Input: glib.var0 (score dummy)
# Input: glib.var1 (score dummy)
# Input: glib.var2 (score dummy)

# Output: glib.res0 (score dummy)
# Output: glib.res1 (score dummy)
# Output: glib.res2 (score dummy)

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute unless entity @s[tag=glib.config.override] run scoreboard players set vector.fastNormalization.lenght glib.config 1000

#__________________________________________________
# CODE

scoreboard players operation vector.fastNormalize.X glib.tmp = @s glib.var0
scoreboard players operation vector.fastNormalize.Y glib.tmp = @s glib.var1
scoreboard players operation vector.fastNormalize.Z glib.tmp = @s glib.var2

execute if score vector.fastNormalize.X glib.tmp matches ..-1 run scoreboard players operation vector.fastNormalize.X glib.tmp *= -1 glib.const
execute if score vector.fastNormalize.Y glib.tmp matches ..-1 run scoreboard players operation vector.fastNormalize.Y glib.tmp *= -1 glib.const
execute if score vector.fastNormalize.Z glib.tmp matches ..-1 run scoreboard players operation vector.fastNormalize.Z glib.tmp *= -1 glib.const

scoreboard players operation vector.fastNormalize.max glib.tmp = vector.fastNormalize.X glib.tmp
execute if score vector.fastNormalize.Y glib.tmp > vector.fastNormalize.max glib.tmp run scoreboard players operation vector.fastNormalize.max glib.tmp = vector.fastNormalize.Y glib.tmp
execute if score vector.fastNormalize.Z glib.tmp > vector.fastNormalize.max glib.tmp run scoreboard players operation vector.fastNormalize.max glib.tmp = vector.fastNormalize.Z glib.tmp

scoreboard players operation @s glib.res0 = @s glib.var0
scoreboard players operation @s glib.res1 = @s glib.var1
scoreboard players operation @s glib.res2 = @s glib.var2

scoreboard players operation @s glib.res0 *= vector.fastNormalization.lenght glib.config
scoreboard players operation @s glib.res1 *= vector.fastNormalization.lenght glib.config
scoreboard players operation @s glib.res2 *= vector.fastNormalization.lenght glib.config

scoreboard players operation @s glib.res0 /= vector.fastNormalize.max glib.tmp
scoreboard players operation @s glib.res1 /= vector.fastNormalize.max glib.tmp
scoreboard players operation @s glib.res2 /= vector.fastNormalize.max glib.tmp
