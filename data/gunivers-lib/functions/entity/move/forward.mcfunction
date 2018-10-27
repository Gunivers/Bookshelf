# NAME: Move Entity Forward
# PATH: gunivers-lib:entity/move/forward

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Vars (module)
# - Constats (module)
# - Local Vectors (module)

# INPUT:
# - VectorFront (score dummy)
# - VectorSpeedLocal (score dummy)

# OUTPUT:

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s VectorFront *= @s VectorSpeedLocal
scoreboard players operation @s VectorFront /= 1000 Constant
scoreboard players set @s VectorSpeedLocal 1000

scoreboard players operation @s Var3 = @s VectorFront

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_Forward,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/move/forward/main
# -----

scoreboard players set @s Var4 1
tag @s add FactorIncrease


execute if entity @s[tag=FactorIncrease] run function gunivers-lib:entity/move/child/forward/loop1

scoreboard players operation @s[scores={Var4=1..}] Var7 = @s Var3

function gunivers-lib:entity/move/child/forward/loop2


