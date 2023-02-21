#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:sin
# Documentation: https://bs-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note: The input is the angle in degrees. The result is scaled by 1000

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# angle + 90
scoreboard players remove @s bs.in.0 90

function bs.math:trig/cos

# restoring input angle
scoreboard players add @s bs.in.0 90



