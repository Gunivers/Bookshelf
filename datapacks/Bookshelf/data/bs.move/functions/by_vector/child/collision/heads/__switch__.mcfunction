# Executed as & at the moving entity

### DEBUG
tellraw @a [{"text":"> bs.move:by_vector/child/collision/heads/__switch__","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# Detection heads switch
execute if score #move.collision bs.data matches -99..-1 run function bs.move:by_vector/child/collision/heads/from_feet
execute if score #move.collision bs.data matches -199..-100 run function bs.move:by_vector/child/collision/heads/from_human_eyes