# NAME: Square Root
# PATH: gunivers-lib:math/sqrt

# AUTHOR: theogiraudet
# CONTRIBUTORS:
# - KubbyDev

# VERSION: 0.1
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Var4 (score dummy)
# - Var5 (score dummy)
# - Var6 (score dummy)

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Root (score dummy)

# NOTE: Calculate the square root of a number.

# CODE:

scoreboard players set @s[tag=!loopSqrt] Var5 0
scoreboard players set @s[tag=!loopSqrt] Var4 1
scoreboard players set @s[tag=!loopSqrt] Root 0
scoreboard players operation @s[tag=!loopSqrt] Var1 *= 1000000 Constant
execute if score @s[tag=!loopSqrt] Var5 < 20 Constant run scoreboard players operation @s[tag=!loopSqrt] Var6 = @s Var1
tag @s[tag=!loopSqrt] add loopSqrt

execute if score @s Var5 < 20 Constant run scoreboard players operation @s Var1 /= @s Var4
execute if score @s Var5 < 20 Constant run scoreboard players operation @s Var1 += @s Var4
execute if score @s Var5 < 20 Constant run scoreboard players operation @s Var1 /= 2 Constant

scoreboard players add @s Var5 1
scoreboard players operation @s[scores={Var5=..19}] Var4 = @s Var1
scoreboard players operation @s[scores={Var5=..19}] Var1 = @s Var6
execute if score @s Var5 < 20 Constant run function gunivers-lib:math/sqrt

scoreboard players operation @s Root = @s Var1
tag @s remove loopSqrt 






