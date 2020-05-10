#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/bool/flip-flop/rs
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
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
# INIT

scoreboard objectives add Input dummy
scoreboard objectives add Output dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:math/bool/clearoutput
scoreboard players add @s Memory 0
execute if score Input1 Input = -1 Constant if score Input2 Input = -1 Constant run scoreboard players set Output1 Output -2
execute if score Input1 Input = 1 Constant if score Input2 Input = 1 Constant run scoreboard players set Output1 Output -2
execute if score Output1 Output >= -1 Constant run scoreboard players operation @s Var1 = Input2 Input
execute if score Output1 Output >= -1 Constant run function glib:math/bool/logic-gate/not
execute if score Output1 Output >= -1 Constant run scoreboard players operation @s Var2 = Output1 Output
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input1 Input = Output1 Output
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input2 Input = @s Var1
execute if score Output1 Output >= -1 Constant run function glib:math/bool/logic-gate/and
execute if score Output1 Output >= -1 Constant run scoreboard players operation @s Var1 = Output1 Output
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input1 Input = @s Memory
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input2 Input = @s Var2
execute if score Output1 Output >= -1 Constant run function glib:math/bool/logic-gate/and
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input1 Input = Output1 Output
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input2 Input = @s Var1
execute if score Output1 Output >= -1 Constant run function glib:math/bool/logic-gate/or
execute if score Output1 Output >= 0 Constant run scoreboard players operation @s Memory = Output1 Output
execute if score Output1 Output = -2 Constant run scoreboard players set Output1 Output -1
function glib:math/bool/clearinput
