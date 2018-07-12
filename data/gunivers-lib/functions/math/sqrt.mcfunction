# NAME: Square Root
# PATH: gunivers-lib:math/sqrt

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Vars
# - Math

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE:

# CONFIGURATION:

# CODE:
scoreboard players set @s[scores={Var1=..1}] Var2 1
execute if entity @s[scores={Var1=2..}] function gunivers-lib:math/get_pow2
scoreboard players operation @s Var2 = @s Res

scoreboard players set @s Res 1
scoreboard players operation @s Var3 = @s Res
scoreboard players operation @s Var3 *= @s Res

execute if entity @s[scores={Var2=2..} unless score @s Var3 = @s Var1 function gunivers-lib:math/child/sqrt_loop
