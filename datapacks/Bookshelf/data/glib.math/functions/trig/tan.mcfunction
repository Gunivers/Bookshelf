#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:tan
# Documentation: https://glib-core.readthedocs.io//math
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

scoreboard players operation @s bs.var4 = @s bs.var0

function bs.math:trig/cos

scoreboard players operation @s bs.var3 = @s bs.res0
scoreboard players operation @s bs.var0 = @s bs.var4

function bs.math:trig/sin

scoreboard players operation @s bs.res0 *= 1000 bs.const
scoreboard players operation @s bs.res0 /= @s bs.var3
