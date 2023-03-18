#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:tan
# Documentation: https://bs-core.readthedocs.io//math
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

scoreboard players operation @s bs.in.4 = @s bs.in.0

function bs.math:cos

scoreboard players operation @s bs.in.3 = @s bs.out.0
scoreboard players operation @s bs.in.0 = @s bs.in.4

function bs.math:sin

scoreboard players operation @s bs.out.0 *= 1000 bs.const
scoreboard players operation @s bs.out.0 /= @s bs.in.3
