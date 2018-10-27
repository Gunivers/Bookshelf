# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:entity/location/child/move_by_vector/apply

# CHILD OF: gunivers-lib:entity/location/move_by_vector

# CODE:

execute if entity @s[scores={Var1=1..}] run function gunivers-lib:entity/move/child/by_vector/apply_pos_x
execute if entity @s[scores={Var1=..-1}] run function gunivers-lib:entity/move/child/by_vector/apply_neg_x

execute if entity @s[scores={Var2=1..}] run function gunivers-lib:entity/move/child/by_vector/apply_pos_y
execute if entity @s[scores={Var2=..-1}] run function gunivers-lib:entity/move/child/by_vector/apply_neg_y

execute if entity @s[scores={Var3=1..}] run function gunivers-lib:entity/move/child/by_vector/apply_pos_z
execute if entity @s[scores={Var3=..-1}] run function gunivers-lib:entity/move/child/by_vector/apply_neg_z