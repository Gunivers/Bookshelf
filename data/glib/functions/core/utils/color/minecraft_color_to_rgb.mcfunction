# NAME: Minecraft Color to RGB
# PATH: glib:utils/color/minecraft_color_to_rgb

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - glib:utils/color/child/init (function)

# INPUT:
# - glib.var

# OUTPUT:
# - R ~ Red component
# - G ~ Green component
# - B ~ Blue component

# NOTE:
# Convert Minecraft Color to RGB Color.

#INIT:
function glib:core/utils/color/init

# CODE:
scoreboard players operation @s R = @s glib.var
scoreboard players operation @s R /= 65536 glib.const
scoreboard players operation @s R %= 256 glib.const

scoreboard players operation @s G = @s glib.var
scoreboard players operation @s G /= 256 glib.const
scoreboard players operation @s G %= 256 glib.const

scoreboard players operation @s B = @s glib.var
scoreboard players operation @s B %= 256 glib.const