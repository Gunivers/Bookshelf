# Executed as & at the moving entity

### DEBUG
tellraw @a [{"text":"> bs.move:by_vector/child/collision/behavior/__switch__","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# Behavior with detection from feet
execute if score #move.collision bs.data matches -1 run function bs.move:by_vector/child/collision/behavior/1-perfect_bounce
execute if score #move.collision bs.data matches -2 run function bs.move:by_vector/child/collision/behavior/2-slide
execute if score #move.collision bs.data matches -3 run function bs.move:by_vector/child/collision/behavior/3-stick
execute if score #move.collision bs.data matches -4 run function bs.move:by_vector/child/collision/behavior/4-damped_bounce

# Behavior with detection from head
execute if score #move.collision bs.data matches -101 run function bs.move:by_vector/child/collision/behavior/1-perfect_bounce
execute if score #move.collision bs.data matches -102 run function bs.move:by_vector/child/collision/behavior/2-slide
execute if score #move.collision bs.data matches -103 run function bs.move:by_vector/child/collision/behavior/3-stick
execute if score #move.collision bs.data matches -104 run function bs.move:by_vector/child/collision/behavior/4-damped_bounce