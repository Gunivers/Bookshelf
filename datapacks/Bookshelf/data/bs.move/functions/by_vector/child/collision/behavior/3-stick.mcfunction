# Executed as & at the moving entity

### DEBUG
tellraw @a [{"text":"> bs.move:by_vector/child/collision/behavior/3-stick","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# Stick -----------------------------------------------------------------------

# The object will stop at the first block it hits
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_x] run scoreboard players set @s bs.vector.x 0
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_y] run scoreboard players set @s bs.vector.y 0
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_z] run scoreboard players set @s bs.vector.z 0
