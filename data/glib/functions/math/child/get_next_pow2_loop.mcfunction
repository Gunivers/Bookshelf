# NAME: Get Next Pow 2
# PATH: glib:math/get_next_pow2

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13.X

# CHILD OF: glib:math/get_next_pow2

# CONFIGURATION:

# CODE:
scoreboard players operation @s Res *= 2 Constant
execute if score @s Res < @s Var1 run function glib:math/child/get_next_pow2_loop
