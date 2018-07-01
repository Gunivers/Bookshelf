#AUTHOR: A~Z
#PATH: gunivers-lib/math/random

#NAMe: Random

#VERSION: 1.0
#MINECRAFT: 1.13

#REQUIREMENTS:
# - Data (score dummy)

#INPUT: /

#OUTPUT: /

#NOTE:
# This is the C++ LCG (Linear Congruential Generator). It takes the Game tick as the first seed

#CODE:
scoreboard players operation Random Data *= 1103515245
scoreboard players operation Random Data += 12345

scoreboard players operation Random Data /= 65536
scoreboard players operation Random Data %= 32768

scoreboard players operation @s Res = Random Data
scoreboard players operation @s Res /= 32767
