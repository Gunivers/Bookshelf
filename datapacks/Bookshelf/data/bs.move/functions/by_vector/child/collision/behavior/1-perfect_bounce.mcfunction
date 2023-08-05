# Executed as & at the moving entity

### DEBUG
tellraw @a [{"text":"> bs.move:by_vector/child/collision/behavior/1-perfect_bounce","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# Perfect bounce --------------------------------------------------------------

# The object will go in the opposite direction with the same speed on the axis it collided with.
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_x] run scoreboard players operation @s bs.vector.x *= -1 bs.const
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_y] run scoreboard players operation @s bs.vector.y *= -1 bs.const
execute if entity @e[tag=bs.move.detection_point,tag=bs.move.collision_on_z] run scoreboard players operation @s bs.vector.z *= -1 bs.const