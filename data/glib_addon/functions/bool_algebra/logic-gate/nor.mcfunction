#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/logic-gate/nor
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note:
# Return 0 if one of the fakePlayer's scores are equal to 1 else return 1. Unspecified scores worth 0 by default and therefore not influence the equation.
# If no entry is initialized then return -1.
# At this end of the function, all inputs are clear.
#Truth table:
#+---------+---------+--------+
#| glib.var0 A | glib.var0 B | glib.var0 |
#+---------+---------+--------+
#|       0 |       0 |      1 |
#|       0 |       1 |      0 |
#|       1 |       0 |      0 |
#|       1 |       1 |      0 |
#+---------+---------+--------+

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:math/bool/clearoutput
function glib:math/bool/logic-gate/or
scoreboard players operation Input1 glib.var0 = Output1 Output
function glib:math/bool/logic-gate/not
function glib:math/bool/clearinput
