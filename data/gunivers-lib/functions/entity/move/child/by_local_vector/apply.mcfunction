# NAME: Move Entity By Local Vector
# PATH: Gunivers-Lib:entity/move/child/by_local_vector/apply

# CHILD OF: gunivers-lib:entity/location/move_by_local_vector

# CODE:

execute if entity @s[scores={Var1=1..}] run function gunivers-lib:entity/move/child/by_local_vector/apply_pos_left
execute if entity @s[scores={Var1=..-1}] run function gunivers-lib:entity/move/child/by_local_vector/apply_neg_left

execute if entity @s[scores={Var2=1..}] run function gunivers-lib:entity/move/child/by_local_vector/apply_pos_up
execute if entity @s[scores={Var2=..-1}] run function gunivers-lib:entity/move/child/by_local_vector/apply_neg_up

execute if entity @s[scores={Var3=1..}] run function gunivers-lib:entity/move/child/by_local_vector/apply_pos_front
execute if entity @s[scores={Var3=..-1}] run function gunivers-lib:entity/move/child/by_local_vector/apply_neg_front