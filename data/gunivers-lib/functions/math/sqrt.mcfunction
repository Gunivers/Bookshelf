# NAME: Square Root
# PATH: gunivers-lib:math/sqrt

# AUTHOR: Luludatra
# CONTRIBUTOR:
# - Theogiraudet/Oromis
# - KubbyDev

# VERSION: 1.1
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - gunivers-lib:utils/import/temporary (Import file)
# - gunivers-lib:utils/import/math (Import file) 
# - gunivers-lib:utils/import/constant(Import file)

# INPUT:
# - Tmp1 (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE: Resolution of the square root of a number

# CONFIGURATION:
execute as @s unless score @s Var2 matches 0.. run scoreboard players set @s Var2 20
# -> Allows you to manage the accuracy of the result. More this value is high, more the impact on the performance is high.
# -> Default value: 20.

# CODE:

# Verifying the presence of a negative number
scoreboard players operation @s Res = @s Var1
scoreboard players operation @s[scores={Res=..-1}] Res *= -1 Constants 

# Operation
scoreboard players operation @s Var4 = @s Res
scoreboard players operation @s Var4 /= 2 Constants
scoreboard players operation @s Var3 = @s Res

# Loop to execute {Var2} time
function gunivers-lib:math/child/sqrt-loop
