# Executed as & at the moving entity

### DEBUG
tellraw @a [{"text":"> bs.move:by_vector/child/collision/behavior/4-damped_bounce","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# Damped bounce ---------------------------------------------------------------

# The object will bounce but will lose half of it's speed each time it bounces.
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_x] run scoreboard players operation @s bs.vector.x *= -1 bs.const
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_y] run scoreboard players operation @s bs.vector.y *= -1 bs.const
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_z] run scoreboard players operation @s bs.vector.z *= -1 bs.const

execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision] run scoreboard players operation @s bs.vector.x /= 2 bs.const
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision] run scoreboard players operation @s bs.vector.y /= 2 bs.const
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision] run scoreboard players operation @s bs.vector.z /= 2 bs.const

