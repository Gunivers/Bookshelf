#__________________________________________________
# Get working vector

execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorZ glib = @s glib.vectorFront

#__________________________________________________
# Apply movement

execute if score move.vectorZ glib matches 1.. run function glib.move:by_local_vector/child/apply_pos_front
execute if score move.vectorZ glib matches ..-1 run function glib.move:by_local_vector/child/apply_neg_front

#__________________________________________________
# collision

execute at @s[scores={glib.collision=1..}] run function glib.move:forward/child/collision

#__________________________________________________
# Loop

scoreboard players remove move.decomposition.factor glib 1
execute at @s if score move.decomposition.factor glib matches 1.. run function glib.move:forward/child/loop
