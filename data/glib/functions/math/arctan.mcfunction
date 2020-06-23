#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/arctan
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - This function returns atan(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.res dummy

# CODE:

scoreboard players set @s glib.var5 1
scoreboard players set @s[scores={glib.var=..-1}] glib.var5 -1

scoreboard players operation @s glib.var *= @s glib.var5

function glib:math/child/arctan-child

scoreboard players operation @s glib.res *= @s glib.var5
