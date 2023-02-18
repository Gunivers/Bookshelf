# NAME: RGB to Minecraft Color
# PATH: bs.color:rgb_to_minecraft_color

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - bs_child:color/init (function)

# INPUT:
# - R ~ Red component
# - G ~ Green component
# - B ~ Blue component

# OUTPUT:
# - bs.res0

#INIT:
function bs.color:init

# NOTE:
# Convert RGB Color to Minecraft Color that can be used in NBT like Leather Armor.

# CODE:
scoreboard players operation @s bs.res0 = @s R
scoreboard players operation @s bs.res0 *= 65536 bs.const
scoreboard players operation @s bs.var0 = @s G
scoreboard players operation @s bs.var0 *= 256 bs.const
scoreboard players operation @s bs.res0 += @s bs.var0
scoreboard players operation @s bs.res0 += @s B
