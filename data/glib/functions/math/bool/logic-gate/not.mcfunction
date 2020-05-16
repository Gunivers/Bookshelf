#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/logic-gate/not
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# Return 1 if Input1 worth 0 and 0 if Input1 worth 1.
# If no entry is initialized then return -1.
# At this end of the function, all inputs are clear.
#Truth table:
#+-------+--------+
#| Input | Output |
#+-------+--------+
#|     0 |      1 |
#|     1 |      0 |
#+-------+--------+

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
execute if score Input1 Input = -1 Constant run scoreboard players set Output1 Output -1
execute if score Input1 Input = 1 Constant run scoreboard players set Output1 Output 0
execute if score Input1 Input = 0 Constant run scoreboard players set Output1 Output 1
function glib:math/bool/clearinput
