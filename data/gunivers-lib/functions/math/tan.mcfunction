# TITLE: Tan
# PATH: gunivers-lib:math/tan

# AUTHOR: KubbyDev

# VERSION: 1.1
# MINECRAFT: 1.13.X

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 must be in interval [0;360]
# - The result is rounded 10^-3

# INIT:
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy

# CODE

scoreboard players operation @s Var5 = @s Var1

function gunivers-lib:math/cos

scoreboard players operation @s Var4 = @s Res
scoreboard players operation @s Var1 = @s Var5

function gunivers-lib:math/sin

scoreboard players operation @s Res *= 1000 Constant
scoreboard players operation @s Res /= @s Var4

