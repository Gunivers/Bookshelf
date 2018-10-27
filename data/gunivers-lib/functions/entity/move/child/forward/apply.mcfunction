# NAME: Move Entity By Local Vector
# PATH: Gunivers-Lib:entity/move/child/forward/apply

# CHILD OF: gunivers-lib:entity/move/forward

# CODE:

execute if entity @s[scores={Var3=1..}] run function gunivers-lib:entity/move/child/by_local_vector/apply_pos_front
execute if entity @s[scores={Var3=..-1}] run function gunivers-lib:entity/move/child/by_local_vector/apply_neg_front