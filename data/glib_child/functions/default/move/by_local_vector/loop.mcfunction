#__________________________________________________
# Get working vector

execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorX glib = @s glib.vectorLeft
execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorY glib = @s glib.vectorUp
execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorZ glib = @s glib.vectorFront

#__________________________________________________
# Apply movement

execute if score move.vectorX glib matches 1.. run function glib_child:default/move/by_local_vector/apply_pos_left
execute if score move.vectorX glib matches ..-1 run function glib_child:default/move/by_local_vector/apply_neg_left

execute if score move.vectorY glib matches 1.. run function glib_child:default/move/by_local_vector/apply_pos_up
execute if score move.vectorY glib matches ..-1 run function glib_child:default/move/by_local_vector/apply_neg_up

execute if score move.vectorZ glib matches 1.. run function glib_child:default/move/by_local_vector/apply_pos_front
execute if score move.vectorZ glib matches ..-1 run function glib_child:default/move/by_local_vector/apply_neg_front

#__________________________________________________
# Loop

scoreboard players remove move.decomposition.factor glib 1
execute at @s if score move.decomposition.factor glib matches 1.. run function glib_child:default/move/by_local_vector/loop
