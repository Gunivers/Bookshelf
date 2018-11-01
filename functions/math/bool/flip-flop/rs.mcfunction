# NAME: RS flip-flop
# PATH: gunivers-lib:math/bool/flip-flop/rs

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - bool (function : gunivers-lib:utils/import/bool)

# INPUT:
# - Input1 in Input (fakePlayer in score dummy)
# - Input2 in Input (fakePlayer in score dummy)

# OUTPUT:
# - Output1 in Output (fakePlayer in score dummy)
# - @s in Memory

# NOTE:
# Input1 is R entry to reset the memory.
# Input2 is S entry to set the memory. 
# Output1 is Q output.
# q is the previous output store on "Memory" player's score. 0 by default.
# If Input1 and Input2 worth 1, the combination is not defined therefore Output1 will be worth -1.
# At this end of the function, all inputs are clear.
#Truth table:
#+----+---+---+
#| R  | S | Q |
#+----+---+---+
#|  0 | 0 | q |
#|  0 | 1 | 1 |
#|  1 | 0 | 0 |
#|  1 | 1 | / |
#+----+---+---+

# CODE:
function gunivers-lib:math/bool/clearoutput
scoreboard players add @s Memory 0
execute if score Input1 Input = -1 Constant if score Input2 Input = -1 Constant run scoreboard players set Output1 Output -2
execute if score Input1 Input = 1 Constant if score Input2 Input = 1 Constant run scoreboard players set Output1 Output -2
execute if score Output1 Output >= -1 Constant run scoreboard players operation @s Var1 = Input2 Input 
execute if score Output1 Output >= -1 Constant run function gunivers-lib:math/bool/logic-gate/not
execute if score Output1 Output >= -1 Constant run scoreboard players operation @s Var2 = Output1 Output
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input1 Input = Output1 Output
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input2 Input = @s Var1
execute if score Output1 Output >= -1 Constant run function gunivers-lib:math/bool/logic-gate/and
execute if score Output1 Output >= -1 Constant run scoreboard players operation @s Var1 = Output1 Output
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input1 Input = @s Memory
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input2 Input = @s Var2
execute if score Output1 Output >= -1 Constant run function gunivers-lib:math/bool/logic-gate/and
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input1 Input = Output1 Output
execute if score Output1 Output >= -1 Constant run scoreboard players operation Input2 Input = @s Var1
execute if score Output1 Output >= -1 Constant run function gunivers-lib:math/bool/logic-gate/or
execute if score Output1 Output >= 0 Constant run scoreboard players operation @s Memory = Output1 Output
execute if score Output1 Output = -2 Constant run scoreboard players set Output1 Output -1
function gunivers-lib:math/bool/clearinput