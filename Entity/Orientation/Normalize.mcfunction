# NAME: Normaize Orientation
# PATH: Gunivers-Lib:Entity/Orientation/Normalize

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Orientation (Import file)
# - Gunivers-Lib:Utils/Import/Constant (Import file)

# INPUT:
# - Theta (score dummy)
# - Phi (score dummy)

# OUTPUT:
# - Theta (score dummy)
# - Phi (score dummy)

# CODE:
scoreboard players operation @s Phi %= 360 Constant
scoreboard players operation @s Theta %= 180 Constant

scoreboard players add @s[score_Phi=-1] Phi 360
