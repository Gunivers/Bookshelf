execute if entity @s[scores={glib.var0=1..}] run function glib:entity/move/child/by_local_vector/apply_pos_left
execute if entity @s[scores={glib.var0=..-1}] run function glib:entity/move/child/by_local_vector/apply_neg_left

execute if entity @s[scores={glib.var1=1..}] run function glib:entity/move/child/by_local_vector/apply_pos_up
execute if entity @s[scores={glib.var1=..-1}] run function glib:entity/move/child/by_local_vector/apply_neg_up

execute if entity @s[scores={glib.var2=1..}] run function glib:entity/move/child/by_local_vector/apply_pos_front
execute if entity @s[scores={glib.var2=..-1}] run function glib:entity/move/child/by_local_vector/apply_neg_front
