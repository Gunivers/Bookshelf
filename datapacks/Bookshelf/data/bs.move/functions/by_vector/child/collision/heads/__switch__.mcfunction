
# Detection heads switch ------------------------------------------------------

execute if score @s bs.collision matches -99..-1 run function bs.move:by_vector/child/collision/heads/from_feet
execute if score @s bs.collision matches -199..-100 run function bs.move:by_vector/child/collision/heads/from_player_head