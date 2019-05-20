# NAME: Normalize Orientation
# PATH: gunivers-lib:entity/orientation/normalize

# AUTHOR: LeiRoF
# CONTRIBUTORS: 
# - KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# INPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# OUTPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# INIT:
scoreboard objectives add OriV dummy
scoreboard objectives add OriH dummy

# CODE:
#____________________________________________________________________________________________________


scoreboard players operation @s OriV %= 180 Constant
scoreboard players operation @s OriH %= 360 Constant

scoreboard players add @s[scores={OriV=..-1}] OriV 180
scoreboard players add @s[scores={OriH=..-1}] OriH 360