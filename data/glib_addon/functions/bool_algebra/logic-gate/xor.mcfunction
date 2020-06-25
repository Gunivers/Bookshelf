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
#| glib.var0 A | glib.var0 B | glib.var0 |
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

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:math/bool/clearoutput
execute if score Input1 glib.var0 = -1 glib.const if score Input2 glib.var0 = -1 glib.const if score Input3 glib.var0 = -1 glib.const if score Input4 glib.var0 = -1 glib.const if score Input5 glib.var0 = -1 glib.const if score Input6 glib.var0 = -1 glib.const if score Input7 glib.var0 = -1 glib.const if score Input8 glib.var0 = -1 glib.const if score Input9 glib.var0 = -1 glib.const run scoreboard players set Output1 glib.var0 -2
function glib:math/bool/set0
execute if score Output1 glib.var0 = -1 glib.const if score Input1 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 glib.var0 = -1 glib.const if score Input2 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 glib.var0 = -1 glib.const if score Input3 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 glib.var0 = -1 glib.const if score Input4 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 glib.var0 = -1 glib.const if score Input5 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 glib.var0 = -1 glib.const if score Input6 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 glib.var0 = -1 glib.const if score Input7 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 glib.var0 = -1 glib.const if score Input8 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
execute if score Output1 glib.var0 = -1 glib.const if score Input9 glib.var0 = 1 glib.const run scoreboard players add @s glib.var0 1
scoreboard players operation @s glib.var0 %= 2 glib.const
execute if score Output1 glib.var0 = -1 glib.const run scoreboard players operation Output1 glib.var0 = @s glib.var0
execute if score Output1 glib.var0 = -2 glib.const run scoreboard players set Output1 glib.var0 -1
scoreboard players set @s glib.var0 0
function glib:math/bool/clearinput
