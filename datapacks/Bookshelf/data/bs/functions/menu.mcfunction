# NAME: Init G-Lib
# PATH: glib:init

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13+

# CODE:
gamerule commandBlockOutput false
tag @s add bs.menu
execute as @s[tag=bs.menu] at @s run function bs.core:menu/main
