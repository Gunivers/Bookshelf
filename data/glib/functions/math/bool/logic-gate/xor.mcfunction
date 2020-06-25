#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/logic-gate/xor
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
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
execute if score Input1 Input = -1 glib.const if score Input2 Input = -1 glib.const if score Input3 Input = -1 glib.const if score Input4 Input = -1 glib.const if score Input5 Input = -1 glib.const if score Input6 Input = -1 glib.const if score Input7 Input = -1 glib.const if score Input8 Input = -1 glib.const if score Input9 Input = -1 glib.const run scoreboard players set Output1 Output -2
function glib:math/bool/set0
execute if score Output1 Output = -1 glib.const if score Input1 Input = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 Output = -1 glib.const if score Input2 Input = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 Output = -1 glib.const if score Input3 Input = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 Output = -1 glib.const if score Input4 Input = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 Output = -1 glib.const if score Input5 Input = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 Output = -1 glib.const if score Input6 Input = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 Output = -1 glib.const if score Input7 Input = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 Output = -1 glib.const if score Input8 Input = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 Output = -1 glib.const if score Input9 Input = 1 glib.const run scoreboard players add @s glib.var0 1
scoreboard players operation @s glib.var0 %= 2 glib.const
execute if score Output1 Output = -1 glib.const run scoreboard players operation Output1 Output = @s glib.var0
execute if score Output1 Output = -2 glib.const run scoreboard players set Output1 Output -1
scoreboard players set @s glib.var0 0
function glib:math/bool/clearinput
