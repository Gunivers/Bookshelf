#__________________________________________________
# Get working vector

execute if entity @s[tag=!bs.move.by_vector.rest] run scoreboard players operation move.vectorZ bs = @s bs.vector.front

#__________________________________________________
# Apply movement

execute if score move.vectorZ bs matches 1.. run function bs.move:by_local_vector/child/apply_pos_front
execute if score move.vectorZ bs matches ..-1 run function bs.move:by_local_vector/child/apply_neg_front

#__________________________________________________
# collision

execute at @s[scores={bs.collision=1..}] run function bs.move:forward/child/collision

#__________________________________________________
# Loop

scoreboard players remove move.decomposition.factor bs 1
execute at @s if score move.decomposition.factor bs matches 1.. run function bs.move:forward/child/loop
