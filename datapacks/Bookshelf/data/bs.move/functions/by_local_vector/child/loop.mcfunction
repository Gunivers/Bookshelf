#__________________________________________________
# Get working vector

execute if entity @s[tag=!bs.move.by_vector.rest] run scoreboard players operation move.vectorX bs = @s bs.vector.x
execute if entity @s[tag=!bs.move.by_vector.rest] run scoreboard players operation move.vectorY bs = @s bs.vector.y
execute if entity @s[tag=!bs.move.by_vector.rest] run scoreboard players operation move.vectorZ bs = @s bs.vector.z

#__________________________________________________
# Apply movement

execute if score move.vectorX bs matches 1.. run function bs.move:by_local_vector/child/apply_pos_left
execute if score move.vectorX bs matches ..-1 run function bs.move:by_local_vector/child/apply_neg_left

execute if score move.vectorY bs matches 1.. run function bs.move:by_local_vector/child/apply_pos_up
execute if score move.vectorY bs matches ..-1 run function bs.move:by_local_vector/child/apply_neg_up

execute if score move.vectorZ bs matches 1.. run function bs.move:by_local_vector/child/apply_pos_front
execute if score move.vectorZ bs matches ..-1 run function bs.move:by_local_vector/child/apply_neg_front

#__________________________________________________
# Loop

scoreboard players remove move.decomposition.factor bs 1
execute at @s if score move.decomposition.factor bs matches 1.. run function bs.move:by_local_vector/child/loop
