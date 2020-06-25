#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/logic-gate/xnor
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note:
# Return 0 if an odd number of the fakePlayer's scores are equal to 1 else return 1. Unspecified scores worth 0 by default and therefore not influence the equation.
# If no entry is initialized then return -1.
# At this end of the function, all inputs are clear.
#Truth table:
#+---------+---------+--------+
#| Input A | Input B | Output |
#+---------+---------+--------+
#|       0 |       0 |      1 |
#|       0 |       1 |      0 |
#|       1 |       0 |      0 |
#|       1 |       1 |      1 |
#+---------+---------+--------+

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Input dummy
scoreboard objectives add Output dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:math/bool/clearoutput
function glib:math/bool/logic-gate/xor
scoreboard players operation Input1 Input = Output1 Output
function glib:math/bool/logic-gate/not
function glib:math/bool/clearinput
