#__________________________________________________
# Get working vector

scoreboard players operation #move.by_local_vector.vector.x bs.data = @s bs.vector.x
scoreboard players operation #move.by_local_vector.vector.y bs.data = @s bs.vector.y
scoreboard players operation #move.by_local_vector.vector.z bs.data = @s bs.vector.z

### DEBUG
tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] [{"text":" \u0020 Remain: ","color":"gray"},{"score":{"name":"#move.by_local_vector.quotient","objective":"bs.data"},"color":"aqua"},{"text":" Vector X: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":" Vector Y: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.y"},"color":"aqua"},{"text":" Vector Z: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.z"},"color":"aqua"}]
### END DEBUG

#__________________________________________________
# Apply movement

execute if score #move.by_local_vector.vector.x bs.data matches 1.. run function bs.move:by_local_vector/child/apply_pos_left
execute if score #move.by_local_vector.vector.x bs.data matches ..-1 run function bs.move:by_local_vector/child/apply_neg_left

execute if score #move.by_local_vector.vector.y bs.data matches 1.. run function bs.move:by_local_vector/child/apply_pos_up
execute if score #move.by_local_vector.vector.y bs.data matches ..-1 run function bs.move:by_local_vector/child/apply_neg_up

execute if score #move.by_local_vector.vector.z bs.data matches 1.. run function bs.move:by_local_vector/child/apply_pos_front
execute if score #move.by_local_vector.vector.z bs.data matches ..-1 run function bs.move:by_local_vector/child/apply_neg_front

#__________________________________________________
# Loop

scoreboard players remove #move.by_local_vector.quotient bs.data 1
execute at @s if score #move.by_local_vector.quotient bs.data matches 1.. run function bs.move:by_local_vector/child/loop
