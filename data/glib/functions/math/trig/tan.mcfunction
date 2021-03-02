#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/tan
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note: The input is the angle in degrees. The result is scaled by 1000. Angle must be on interval [0;360]

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT






#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# PARAMETERS

#__________________________________________________
# INIT:



# CODE

scoreboard players operation @s glib.var4 = @s glib.var0

function glib:math/trig/cos

scoreboard players operation @s glib.var3 = @s glib.res0
scoreboard players operation @s glib.var0 = @s glib.var4

function glib:math/trig/sin

scoreboard players operation @s glib.res0 *= 1000 glib.const
scoreboard players operation @s glib.res0 /= @s glib.var3
