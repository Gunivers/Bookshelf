# NAME: Minecraft Color to RGB
# PATH: bs.color:minecraft_color_to_rgb

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - glib_child:color/init (function)

# INPUT:
# - bs.var0

# OUTPUT:
# - R ~ Red component
# - G ~ Green component
# - B ~ Blue component

# NOTE:
# Convert Minecraft Color to RGB Color.

#INIT:
function bs.color:init

# CODE:
scoreboard players operation @s R = @s bs.var0
scoreboard players operation @s R /= 65536 bs.const
scoreboard players operation @s R %= 256 bs.const

scoreboard players operation @s G = @s bs.var0
scoreboard players operation @s G /= 256 bs.const
scoreboard players operation @s G %= 256 bs.const

scoreboard players operation @s B = @s bs.var0
scoreboard players operation @s B %= 256 bs.const