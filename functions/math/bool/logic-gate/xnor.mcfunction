# NAME: Not exclusive or gate
# PATH: gunivers-lib:math/bool/logic-gate/nor

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - bool (function : gunivers-lib:utils/import/bool)

# INPUT:
# - Input[1 to 9] in Input (fakePlayer in score dummy) 2 scores minimum

# OUTPUT:
# - Output1 in Output (fakePlayer in score dummy)

# NOTE:
# Return 0 if an odd number of the fakePlayer's scores are equal to 1 else return 1. Unspecified scores worth 0 by default and therefore not influence the equation.
# If no entry is initialized then return -1.
# At this end of the function, all inputs are clear.
#Truth table:
#+---------+---------+--------+
#| Input A | Input B | Output |
#+---------+---------+--------+
#|       0 |       0 |      1 |
#|       0 |       1 |      0 |
#|       1 |       0 |      0 |
#|       1 |       1 |      1 |
#+---------+---------+--------+


# CODE:
function gunivers-lib:math/bool/clearoutput
function gunivers-lib:math/bool/logic-gate/xor
scoreboard players operation Input1 Input = Output1 Output
function gunivers-lib:math/bool/logic-gate/not
function gunivers-lib:math/bool/clearinput
