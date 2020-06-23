#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/tan
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note: The input is the angle in degrees. The result is scaled by 1000. Angle must be on interval [0;360]

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# PARAMETERS

#__________________________________________________
# INIT:
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy

# CODE

scoreboard players operation @s glib.var5 = @s glib.var

function glib:math/cos

scoreboard players operation @s glib.var4 = @s glib.res
scoreboard players operation @s glib.var = @s glib.var5

function glib:math/sin

scoreboard players operation @s glib.res *= 1000 glib.const
scoreboard players operation @s glib.res /= @s glib.var4
