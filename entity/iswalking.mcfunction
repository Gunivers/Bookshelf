# NAME: Is Walking
# PATH: gunivers-lib:entity/iswalking

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13

# CHILD OF: gunivers-lib:entity/getspeed

# OUTPUT:
# - IsWalking

# NOTE: Allow to know if the entity walk.

# CODE:

execute as @s run function gunivers-lib:entity/getspeed
execute as @s if score @s Speed > 0 Constant run scoreboard players set @s IsWalking 1
execute as @s if score @s Speed = 0 Constant run scoreboard players set @s IsWalking 0

