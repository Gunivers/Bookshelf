# AUTHOR: A~Z
# PATH: gunivers-lib/math/random

# NAME: Random CLG

# VERSION: 3.0
# MINECRAFT: 1.13+

# OUTPUT
# - Res (score)

# INIT:
execute if score rand Data matches 0 store result score randSeed run time query gametime

# NOTE:
# This script gets you a random number between 0 and 65521.
# You can use the modulo operator so as to limit the output to any value greater than 0,
# but please take in account that this would impact the equaprobability
#
# To regenerate the seed, use:
# execute store result score rand Data run time query gametime

# CODE:
scoreboard players operation rand Data %= 65521 Constant
scoreboard players operation @s Res = rand Data

scoreboard players operation rand Data *= 17364 Constant

#tellraw @a ["",{"text":"[Debug] Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
