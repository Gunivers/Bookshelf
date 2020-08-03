execute if score move.vectorX.tmp glib matches 1.. run function glib_child:default/move/by_local_vector/apply_pos_left
execute if score move.vectorX.tmp glib matches ..-1 run function glib_child:default/move/by_local_vector/apply_neg_left

execute if score move.vectorY.tmp glib matches 1.. run function glib_child:default/move/by_local_vector/apply_pos_up
execute if score move.vectorY.tmp glib matches ..-1 run function glib_child:default/move/by_local_vector/apply_neg_up

execute if score move.vectorZ.tmp glib matches 1.. run function glib_child:default/move/by_local_vector/apply_pos_front
execute if score move.vectorZ.tmp glib matches ..-1 run function glib_child:default/move/by_local_vector/apply_neg_front
