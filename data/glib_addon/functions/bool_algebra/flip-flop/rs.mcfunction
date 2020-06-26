#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/flip-flop/rs
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note:
# - Input1 is R entry to reset the memory.
# - Input2 is S entry to set the memory.
# - Output1 is Q output.
# - q is the previous output store on "Memory" player's score. 0 by default.
# - If Input1 and Input2 worth 1, the combination is not defined therefore Output1 will be worth -1.
# - At this end of the function, all inputs are clear.
# - Truth table:
#   +----+---+---+
#   | R  | S | Q |
#   +----+---+---+
#   |  0 | 0 | q |
#   |  0 | 1 | 1 |
#   |  1 | 0 | 0 |
#   |  1 | 1 | / |
#   +----+---+---+

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
scoreboard players add @s Memory 0
execute if score Input1 glib.var0 = -1 glib.const if score Input2 glib.var0 = -1 glib.const run scoreboard players set Output1 glib.var0 -2
execute if score Input1 glib.var0 = 1 glib.const if score Input2 glib.var0 = 1 glib.const run scoreboard players set Output1 glib.var0 -2
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation @s glib.var0 = Input2 Input
execute if score Output1 glib.var0 >= -1 glib.const run function glib:math/bool/logic-gate/not
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation @s glib.var1 = Output1 Output
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation Input1 glib.var0 = Output1 Output
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation Input2 glib.var0 = @s glib.var0
execute if score Output1 glib.var0 >= -1 glib.const run function glib:math/bool/logic-gate/and
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation @s glib.var0 = Output1 Output
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation Input1 glib.var0 = @s Memory
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation Input2 glib.var0 = @s glib.var1
execute if score Output1 glib.var0 >= -1 glib.const run function glib:math/bool/logic-gate/and
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation Input1 glib.var0 = Output1 Output
execute if score Output1 glib.var0 >= -1 glib.const run scoreboard players operation Input2 glib.var0 = @s glib.var0
execute if score Output1 glib.var0 >= -1 glib.const run function glib:math/bool/logic-gate/or
execute if score Output1 glib.var0 >= 0 glib.const run scoreboard players operation @s Memory = Output1 Output
execute if score Output1 glib.var0 = -2 glib.const run scoreboard players set Output1 glib.var0 -1
function glib:math/bool/clearinput
