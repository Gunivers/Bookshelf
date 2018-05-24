# NAME: Normalize Orientation
# PATH: gunivers-lib:entity/orientation/normalize

# AUTHOR: LeiRoF
# CONTRIBUTORS: 
# - KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - gunivers-lib:utils/import/orientation (Import file)
# - gunivers-lib:utils/import/constant (Import file)

# INPUT:
# - Theta (score dummy)
# - Phi (score dummy)

# OUTPUT:
# - Theta (score dummy)
# - Phi (score dummy)

# CODE:
scoreboard players operation @s Phi %= 360 Constant
scoreboard players operation @s Theta %= 180 Constant

scoreboard players add @s[scores={Phi=..-1}] Phi 360
scoreboard players add @s[scores={Theta=..-1}] Theta 180