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

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# PARAMETERS

#__________________________________________________
# INIT:
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy

# CODE

scoreboard players operation @s Var5 = @s Var1

function glib:math/cos

scoreboard players operation @s Var4 = @s Res1
scoreboard players operation @s Var1 = @s Var5

function glib:math/sin

scoreboard players operation @s Res1 *= 1000 Constant
scoreboard players operation @s Res1 /= @s Var4
