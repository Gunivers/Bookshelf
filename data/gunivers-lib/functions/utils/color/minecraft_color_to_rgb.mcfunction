# NAME: Minecraft Color to RGB
# PATH: gunivers-lib:utils/color/minecraft_color_to_rgb

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - function gunivers-lib:utils/color/init

# INPUT:
# - Var1 (scoreboard dummy)

# OUTPUT:
# - R (scoreboard dummy) Red component
# - G (scoreboard dummy) Green component
# - B (scoreboard dummy) Blue component

# NOTE:
# Convert Minecraft Color to RGB Color.

# CODE:

# Red
scoreboard players operation @s R = @s Var1
scoreboard players operation @s R /= 65536 Constant
scoreboard players operation @s R %= 256 Constant

scoreboard players operation @s G = @s Var1
scoreboard players operation @s G /= 256 Constant
scoreboard players operation @s G %= 256 Constant

scoreboard players operation @s B = @s Var1
scoreboard players operation @s B %= 256 Constant