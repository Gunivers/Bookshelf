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

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.res0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# PARAMETERS

#__________________________________________________
# INIT:
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy

# CODE

scoreboard players operation @s glib.var4 = @s glib.var0

function glib:math/trig/cos

scoreboard players operation @s glib.var3 = @s glib.res0
scoreboard players operation @s glib.var0 = @s glib.var4

function glib:math/trig/sin

scoreboard players operation @s glib.res0 *= 1000 glib.const
scoreboard players operation @s glib.res0 /= @s glib.var3
