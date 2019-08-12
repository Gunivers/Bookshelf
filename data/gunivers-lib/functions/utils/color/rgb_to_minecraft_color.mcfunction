# NAME: RGB to Minecraft Color
# PATH: gunivers-lib:utils/color/rgb_to_minecraft_color

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - function gunivers-lib:utils/color/init

# INPUT:
# - R (scoreboard dummy) Red component
# - G (scoreboard dummy) Green component
# - B (scoreboard dummy) Blue component

# OUTPUT:
# - Output (scoreboard dummy)

# NOTE:
# Convert RGB Color to Minecraft Color that can be used in NBT like Leather Armor.

# CODE:
scoreboard players operation @s Output = @s R
scoreboard players operation @s Output *= 65536 Constant
scoreboard players operation @s Var1 = @s G
scoreboard players operation @s Var1 *= 256 Constant
scoreboard players operation @s Output += @s Var1
scoreboard players operation @s Output += @s B