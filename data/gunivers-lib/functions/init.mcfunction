# NAME: Init G-Lib
# PATH: gunivers-lib:init

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
gamerule commandBlockOutput false
tag @s add Glib_Init_Menu
execute as @s[tag=Glib_Init_Menu] at @s run function gunivers-lib:utils/init/main