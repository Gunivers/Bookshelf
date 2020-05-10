# NAME: Minecraft Color to RGB
# PATH: glib:utils/color/minecraft_color_to_rgb

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - glib:utils/color/child/init (function)

# INPUT:
# - Var1

# OUTPUT:
# - R ~ Red component
# - G ~ Green component
# - B ~ Blue component

# NOTE:
# Convert Minecraft Color to RGB Color.

#INIT:
function glib:core/utils/color/init

# CODE:
scoreboard players operation @s R = @s Var1
scoreboard players operation @s R /= 65536 Constant
scoreboard players operation @s R %= 256 Constant

scoreboard players operation @s G = @s Var1
scoreboard players operation @s G /= 256 Constant
scoreboard players operation @s G %= 256 Constant

scoreboard players operation @s B = @s Var1
scoreboard players operation @s B %= 256 Constant