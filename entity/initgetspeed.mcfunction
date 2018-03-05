# NAME: Init Get Speed
# PATH: gunivers-lib:entity/initgetspeed

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13

# CHILD OF: gunivers-lib:entity/location/get

# OUTPUT:
# - Var1 (score dummy)
# - Var2 (score dummy)
# - Var3 (score dummy)

# NOTE: To run each time before a recursion of gunivers-lib:entity/getspeed

# CODE:

execute as @s run function gunivers-lib:entity/location/get
scoreboard players operation @s Var1 = @s Output1
scoreboard players operation @s Var2 = @s Output2
scoreboard players operation @s Var3 = @s Output3