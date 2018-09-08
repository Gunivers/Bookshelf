# NAME: Square Root
# PATH: Gunivers-Lib:Math/Sqrt

# AUTHOR: Luludatra
# CONTRIBUTORS:
# - Theogiraudet/Oromis
# - KubbyDev

# VERSION: 1.1
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file) 
# - Gunivers-Lib:Utils/Import/Constant(Import file)

# INPUT:
# - Tmp1 (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE: Resolution of the square root of a number

# CONFIGURATION:
scoreboard players set @s Tmp2 20
# -> Allows you to manage the accuracy of the result. More this value is high, more the impact on the performance is high.
# -> Default value: 20.

# CODE:
#____________________________________________________________________________________________________


# Verifying the presence of a negative number
scoreboard players operation @s Res = @s Tmp1
scoreboard players operation @s[score_Res=-1] Res *= -1 Constant 

# Operation
scoreboard players operation @s Tmp4 = @s Res
scoreboard players operation @s Tmp4 /= 2 Constant
scoreboard players operation @s Tmp3 = @s Res

# Loop to execute {Tmp2} time
function Gunivers-Lib:Math/Child/Sqrt-Loop