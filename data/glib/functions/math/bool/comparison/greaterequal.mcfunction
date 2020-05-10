#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/comparison/greaterequal
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - Return 1 if Input1 >= Input2 else return 0
# - At this end of the function, all inputs are clear.

#__________________________________________________
# INIT

scoreboard objectives add Input dummy
scoreboard objectives add Output dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:math/bool/clearoutput
execute if score Input1 Input >= Input2 Input run scoreboard players set Output1 Output 1
execute if score Input1 Input < Input2 Input run scoreboard players set Output1 Output 0
function glib:math/bool/clearinput
