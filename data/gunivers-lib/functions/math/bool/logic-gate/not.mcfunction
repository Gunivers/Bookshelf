# NAME: Not gate
# PATH: gunivers-lib:math/bool/logic-gate/not

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - bool (function : gunivers-lib:utils/import/bool)

# INPUT:
# - Input1 in Input (fakePlayer in score dummy)

# OUTPUT:
# - Output1 in Output (fakePlayer in score dummy)

# NOTE:
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

# CODE:
function gunivers-lib:math/bool/clearoutput
execute if score Input1 Input = -1 Constant run scoreboard players set Output1 Output -1
execute if score Input1 Input = 1 Constant run scoreboard players set Output1 Output 0
execute if score Input1 Input = 0 Constant run scoreboard players set Output1 Output 1
function gunivers-lib:math/bool/clearinput
