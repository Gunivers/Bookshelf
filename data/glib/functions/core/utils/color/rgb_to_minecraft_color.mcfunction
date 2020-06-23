# NAME: RGB to Minecraft Color
# PATH: glib:utils/color/rgb_to_minecraft_color

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - glib:utils/color/child/init (function)

# INPUT:
# - R ~ Red component
# - G ~ Green component
# - B ~ Blue component

# OUTPUT:
# - glib.res

#INIT:
function glib:core/utils/color/init

# NOTE:
# Convert RGB Color to Minecraft Color that can be used in NBT like Leather Armor.

# CODE:
scoreboard players operation @s glib.res = @s R
scoreboard players operation @s glib.res *= 65536 glib.const
scoreboard players operation @s glib.var = @s G
scoreboard players operation @s glib.var *= 256 glib.const
scoreboard players operation @s glib.res += @s glib.var
scoreboard players operation @s glib.res += @s B
