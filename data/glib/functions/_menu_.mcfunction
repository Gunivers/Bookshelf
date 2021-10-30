# NAME: Init G-Lib
# PATH: glib:init

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13+

# CODE:
gamerule commandBlockOutput false
tag @s add glib.menu
execute as @s[tag=glib.menu] at @s run function glib.core:menu/main
