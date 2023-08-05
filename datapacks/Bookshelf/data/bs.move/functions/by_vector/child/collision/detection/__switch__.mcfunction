# Executed as & at the moving entity

### DEBUG
tellraw @a [{"text":"> bs.move:by_vector/child/collision/detection/__switch__","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# Detection type switch
execute if score #move.collision bs.data matches ..-1 run function bs.move:by_vector/child/collision/detection/solid_block