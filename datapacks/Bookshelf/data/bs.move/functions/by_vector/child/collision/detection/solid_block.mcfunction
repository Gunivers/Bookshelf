# Executed as the moving entity and at the detection point

### DEBUG
tellraw @a [{"text":"> bs.move:by_vector/child/collision/detection/solid_block_on_detection_head","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# Detect block front ----------------------------------------------------------

execute unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.move.collision