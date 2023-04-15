
# Behavior with detection from feet -------------------------------------------

execute if score @s bs.collision matches -1 run function bs.move:by_vector/child/collision/behavior/1-perfect_bounce
execute if score @s bs.collision matches -2 run function bs.move:by_vector/child/collision/behavior/2-slide
execute if score @s bs.collision matches -3 run function bs.move:by_vector/child/collision/behavior/3-stick
execute if score @s bs.collision matches -4 run function bs.move:by_vector/child/collision/behavior/4-damped_bounce

# Behavior with detection from head -------------------------------------------

execute if score @s bs.collision matches -101 run function bs.move:by_vector/child/collision/behavior/1-perfect_bounce
execute if score @s bs.collision matches -102 run function bs.move:by_vector/child/collision/behavior/2-slide
execute if score @s bs.collision matches -103 run function bs.move:by_vector/child/collision/behavior/3-stick
execute if score @s bs.collision matches -104 run function bs.move:by_vector/child/collision/behavior/4-damped_bounce