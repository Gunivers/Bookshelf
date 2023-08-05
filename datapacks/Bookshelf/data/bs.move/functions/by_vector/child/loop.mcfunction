# Executed as and at the moving entity

### DEBUG
# tellraw @a [{"text":"> bs.move:by_vector/child/loop","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]



# Collision detection --------------------------------------------------------- 

# Define detection points
execute if score #move.collision bs.data matches ..-1 run function bs.move:by_vector/child/collision/points/__switch__
execute if score #move.collision bs.data matches 1.. run function bs.move:by_vector/config/collision/points/__switch__

# Move detection points to next entity location
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.rx = @s bs.loc.rx
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.ry = @s bs.loc.ry
scoreboard players operation @e[tag=bs.move.collision_detection_point] bs.loc.rz = @s bs.loc.rz
execute as @e[tag=bs.move.collision_detection_point] at @s run function bs.location:add/scale/3

# Detect collision on detection points
execute as @e[tag=bs.move.collision_detection_point] at @s if score #move.collision bs.data matches ..-1 run function bs.move:by_vector/child/collision/detection/__switch__
execute as @e[tag=bs.move.collision_detection_point] at @s if score #move.collision bs.data matches 1.. run function bs.move:by_vector/config/collision/detection/__switch__

# Run collision script if a detection point collided
execute if entity @e[tag=bs.move.collision_detection_point,tag=bs.move.collision_detected] run function bs.move:by_vector/child/collision

# Remove detection points
kill @e[tag=bs.move.collision_detection_point]



# Trajectory display ----------------------------------------------------------

# Display trajectory
execute if entity @s[tag=bs.move.display_trajectory] at @s run summon block_display ~-0.05 ~-0.05 ~-0.05 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:white_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
execute if entity @s[tag=bs.move.display_trajectory,tag=bs.move.collision] at @e[tag=bs.move.collision_detection_point,tag=front] run summon block_display ~-0.05 ~-0.05 ~-0.05 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:black_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
execute if entity @s[tag=bs.move.display_trajectory,tag=bs.move.collision_on_x] at @e[tag=bs.move.collision_detection_point,tag=x] run summon block_display ~-0.2 ~-0.025 ~-0.025 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.05f,0.05f]},block_state:{Name:"minecraft:red_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
execute if entity @s[tag=bs.move.display_trajectory,tag=bs.move.collision_on_y] at @e[tag=bs.move.collision_detection_point,tag=y] run summon block_display ~-0.025 ~-0.2 ~-0.025 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.05f,0.4f,0.05f]},block_state:{Name:"minecraft:lime_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
execute if entity @s[tag=bs.move.display_trajectory,tag=bs.move.collision_on_z] at @e[tag=bs.move.collision_detection_point,tag=z] run summon block_display ~-0.025 ~-0.025 ~-0.2 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.05f,0.05f,0.4f]},block_state:{Name:"minecraft:blue_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
scoreboard players add @e[tag=bs.move.TrajectoryDisplay] bs.lifetime 0
scoreboard players set @e[tag=bs.move.TrajectoryDisplay,scores={bs.lifetime=0..}] bs.lifetime -200



# Movement --------------------------------------------------------------------

# Apply movement
execute if entity @s[tag=!bs.move.collision] run function bs.location:add/scale/3



# Loop ------------------------------------------------------------------------

scoreboard players remove #A bs.data 1
execute at @s[tag=!bs.move.collision] if score #A bs.data matches 1.. run function bs.move:by_vector/child/loop