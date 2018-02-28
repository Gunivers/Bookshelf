# NAME: Exclusive or gate
# PATH: gunivers-lib:math/bool/logic-gate/xor

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - bool (function : gunivers-lib:utils/import/bool)
# - Var1 (score dummy)

# INPUT:
# - Input[1 to 9] in Input (fakePlayer in score dummy) 2 scores minimum

# OUTPUT:
# - Output1 in Output (fakePlayer in score dummy)

# NOTE:
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


# CODE:
function gunivers-lib:math/bool/clearoutput
execute if score Input1 Input = -1 Constant if score Input2 Input = -1 Constant if score Input3 Input = -1 Constant if score Input4 Input = -1 Constant if score Input5 Input = -1 Constant if score Input6 Input = -1 Constant if score Input7 Input = -1 Constant if score Input8 Input = -1 Constant if score Input9 Input = -1 Constant run scoreboard players set Output1 Output -2
function gunivers-lib:math/bool/set0
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
function gunivers-lib:math/bool/clearinput
