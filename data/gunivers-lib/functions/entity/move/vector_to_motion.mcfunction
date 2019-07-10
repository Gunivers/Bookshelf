# NAME: Vector to Motion
# PATH: gunivers-lib:entity/move/vector_to_motion

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var2 = @s VectorY
scoreboard players operation @s Var3 = @s VectorZ

scoreboard players operation @s Var1 *= @s VectorSpeed
scoreboard players operation @s Var2 *= @s VectorSpeed
scoreboard players operation @s Var3 *= @s VectorSpeed

scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var2 /= 1000 Constant
scoreboard players operation @s Var3 /= 1000 Constant

execute as @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s Var1
execute as @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s Var2
execute as @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s Var3