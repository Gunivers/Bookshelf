# Executed as and at the moving entity

### DEBUG
tellraw @a [{"text":"> bs.move:by_vector/child/collision","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# Remove old detection points that didn't detect a collision
kill @e[tag=bs.move.collision_detection_point,tag=!bs.move.collision_detected]

# Add global collision tag to remaining detection points
tag @e[tag=bs.move.collision_detection_point,tag=bs.move.collision_detected] add bs.move.collision



# Detection on X --------------------------------------------------------------

# Remove detection tag
tag @e[tag=bs.move.collision_detection_point] remove bs.move.collision_detected

# Move the detection points
scoreboard players set @e[tag=bs.move.collision_detection_point] bs.loc.rx 0
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.ry *= -1 bs.const
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.rz *= -1 bs.const
execute as @e[tag=bs.move.collision_detection_point] at @s run function bs.location:add/scale/3

# Detect collision on detection points
execute as @e[tag=bs.move.collision_detection_point] at @s if score #move.collision bs.data matches ..-1 run function bs.move:by_vector/child/collision/detection/__switch__
execute as @e[tag=bs.move.collision_detection_point] at @s if score #move.collision bs.data matches 1.. run function bs.move:by_vector/config/collision/detection/__switch__

# Add global collision tag to remaining detection points
tag @e[tag=bs.move.collision_detection_point,tag=bs.move.collision_detected] add bs.move.collision_on_X



# Detection on Y --------------------------------------------------------------

# Remove detection tag
tag @e[tag=bs.move.collision_detection_point] remove bs.move.collision_detected

# Move the detection points
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.rx -= @s bs.loc.rx
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.ry *= -1 bs.const
scoreboard players set @e[tag=bs.move.collision_detection_point] bs.loc.rz 0
execute as @e[tag=bs.move.collision_detection_point] at @s run function bs.location:add/scale/3

# Detect collision on detection points
execute as @e[tag=bs.move.collision_detection_point] at @s if score #move.collision bs.data matches ..-1 run function bs.move:by_vector/child/collision/detection/__switch__
execute as @e[tag=bs.move.collision_detection_point] at @s if score #move.collision bs.data matches 1.. run function bs.move:by_vector/config/collision/detection/__switch__

# Add global collision tag to remaining detection points
tag @e[tag=bs.move.collision_detection_point,tag=bs.move.collision_detected] add bs.move.collision_on_Y



# Detection on Z --------------------------------------------------------------

# Remove detection tag
tag @e[tag=bs.move.collision_detection_point] remove bs.move.collision_detected

# Move the detection points
scoreboard players set @e[tag=bs.move.collision_detection_point] bs.loc.rx 0
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.ry *= -1 bs.const
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.rz = @s bs.loc.rz
execute as @e[tag=bs.move.collision_detection_point] at @s run function bs.location:add/scale/3

# Detect collision on detection points
execute as @e[tag=bs.move.collision_detection_point] at @s if score #move.collision bs.data matches ..-1 run function bs.move:by_vector/child/collision/detection/__switch__
execute as @e[tag=bs.move.collision_detection_point] at @s if score #move.collision bs.data matches 1.. run function bs.move:by_vector/config/collision/detection/__switch__

# Add global collision tag to remaining detection points
tag @e[tag=bs.move.collision_detection_point,tag=bs.move.collision_detected] add bs.move.collision_on_Y

# Applying behavior -----------------------------------------------------------

execute if score #move.collision bs.data matches ..-1 run function bs.move:by_vector/child/collision/behavior/__switch__
execute if score #move.collision bs.data matches 1.. run function bs.move:by_vector/config/collision/behavior/__switch__
