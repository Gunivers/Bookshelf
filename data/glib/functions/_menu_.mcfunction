# NAME: Init G-Lib
# PATH: glib:init

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13+

# CODE:
gamerule commandBlockOutput false
tag @s add Glib_Init_Menu
execute as @s[tag=Glib_Init_Menu] at @s run function glib:core/menu/main