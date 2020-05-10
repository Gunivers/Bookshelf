# NAME: Move Entity By Local Vector
# PATH: Glib:entity/move/child/forward/apply

# CHILD OF: glib:entity/move/forward

# CODE:

execute if entity @s[scores={Var3=1..}] run function glib:entity/move/child/by_local_vector/apply_pos_front
execute if entity @s[scores={Var3=..-1}] run function glib:entity/move/child/by_local_vector/apply_neg_front