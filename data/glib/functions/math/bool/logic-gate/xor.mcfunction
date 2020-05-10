#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/logic-gate/xor
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# Return 1 if an odd number of the fakePlayer's scores are equal to 1 else return 0. Unspecified scores worth 0 by default and therefore not influence the equation.
# If no entry is initialized then return -1.
# At this end of the function, all inputs are clear.
#Truth table:
#+---------+---------+--------+
#| Input A | Input B | Output |
#+---------+---------+--------+
#|       0 |       0 |      0 |
#|       0 |       1 |      1 |
#|       1 |       0 |      1 |
#|       1 |       1 |      0 |
#+---------+---------+--------+

#__________________________________________________
# INIT

scoreboard objectives add Input dummy
scoreboard objectives add Output dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:math/bool/clearoutput
execute if score Input1 Input = -1 Constant if score Input2 Input = -1 Constant if score Input3 Input = -1 Constant if score Input4 Input = -1 Constant if score Input5 Input = -1 Constant if score Input6 Input = -1 Constant if score Input7 Input = -1 Constant if score Input8 Input = -1 Constant if score Input9 Input = -1 Constant run scoreboard players set Output1 Output -2
function glib:math/bool/set0
execute if score Output1 Output = -1 Constant if score Input1 Input = 1 Constant run scoreboard players add @s Var1 1
execute if score Output1 Output = -1 Constant if score Input2 Input = 1 Constant run scoreboard players add @s Var1 1
execute if score Output1 Output = -1 Constant if score Input3 Input = 1 Constant run scoreboard players add @s Var1 1
execute if score Output1 Output = -1 Constant if score Input4 Input = 1 Constant run scoreboard players add @s Var1 1
execute if score Output1 Output = -1 Constant if score Input5 Input = 1 Constant run scoreboard players add @s Var1 1
execute if score Output1 Output = -1 Constant if score Input6 Input = 1 Constant run scoreboard players add @s Var1 1
execute if score Output1 Output = -1 Constant if score Input7 Input = 1 Constant run scoreboard players add @s Var1 1
execute if score Output1 Output = -1 Constant if score Input8 Input = 1 Constant run scoreboard players add @s Var1 1
execute if score Output1 Output = -1 Constant if score Input9 Input = 1 Constant run scoreboard players add @s Var1 1
scoreboard players operation @s Var1 %= 2 Constant
execute if score Output1 Output = -1 Constant run scoreboard players operation Output1 Output = @s Var1
execute if score Output1 Output = -2 Constant run scoreboard players set Output1 Output -1
scoreboard players set @s Var1 0
function glib:math/bool/clearinput
