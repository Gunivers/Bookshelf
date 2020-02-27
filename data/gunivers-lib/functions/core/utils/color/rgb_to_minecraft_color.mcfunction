# NAME: RGB to Minecraft Color
# PATH: gunivers-lib:utils/color/rgb_to_minecraft_color

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - gunivers-lib:utils/color/child/init (function)

# INPUT:
# - R ~ Red component
# - G ~ Green component
# - B ~ Blue component

# OUTPUT:
# - Res

#INIT:
function gunivers-lib:core/utils/color/init

# NOTE:
# Convert RGB Color to Minecraft Color that can be used in NBT like Leather Armor.

# CODE:
scoreboard players operation @s Res = @s R
scoreboard players operation @s Res *= 65536 Constant
scoreboard players operation @s Var1 = @s G
scoreboard players operation @s Var1 *= 256 Constant
scoreboard players operation @s Res += @s Var1
scoreboard players operation @s Res += @s B