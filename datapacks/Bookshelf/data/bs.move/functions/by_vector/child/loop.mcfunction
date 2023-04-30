

# Detect and apply collision --------------------------------------------------

execute if score @s bs.collision matches ..-1 run function bs.move:by_vector/child/collision/heads/__switch__
execute if score @s bs.collision matches 1.. run function bs.config:move/by_vector/collision/heads/__switch__

execute if score @s bs.collision matches ..-1 run function bs.move:by_vector/child/collision/detection/__switch__
execute if score @s bs.collision matches 1.. run function bs.config:move/by_vector/collision/detection/__switch__

execute if score @s bs.collision matches ..-1 run function bs.move:by_vector/child/collision/behavior/__switch__
execute if score @s bs.collision matches 1.. run function bs.config:move/by_vector/collision/behavior/__switch__

# Display trajectory ----------------------------------------------------------

execute if entity @s[tag=bs.move.DisplayTrajectory] at @s run summon block_display ~-0.05 ~-0.05 ~-0.05 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:white_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
execute if entity @s[tag=bs.move.DisplayTrajectory,tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=front] run summon block_display ~-0.05 ~-0.05 ~-0.05 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:black_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
execute if entity @s[tag=bs.move.DisplayTrajectory,tag=bs.collision.x] at @e[tag=bs.collision.detection.head,tag=x] run summon block_display ~-0.2 ~-0.025 ~-0.025 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.05f,0.05f]},block_state:{Name:"minecraft:red_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
execute if entity @s[tag=bs.move.DisplayTrajectory,tag=bs.collision.y] at @e[tag=bs.collision.detection.head,tag=y] run summon block_display ~-0.025 ~-0.2 ~-0.025 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.05f,0.4f,0.05f]},block_state:{Name:"minecraft:lime_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
execute if entity @s[tag=bs.move.DisplayTrajectory,tag=bs.collision.z] at @e[tag=bs.collision.detection.head,tag=z] run summon block_display ~-0.025 ~-0.025 ~-0.2 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.05f,0.05f,0.4f]},block_state:{Name:"minecraft:blue_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
scoreboard players add @e[tag=bs.move.TrajectoryDisplay] bs.lifetime 0
scoreboard players set @e[tag=bs.move.TrajectoryDisplay,scores={bs.lifetime=0..}] bs.lifetime -200

# Apply movement --------------------------------------------------------------

execute if entity @s[tag=!bs.collision] run scoreboard players operation @s bs.loc.rx = #Vt.x bs.data
execute if entity @s[tag=!bs.collision] run scoreboard players operation @s bs.loc.ry = #Vt.y bs.data
execute if entity @s[tag=!bs.collision] run scoreboard players operation @s bs.loc.rz = #Vt.z bs.data

execute if entity @s[tag=!bs.collision] run function bs.location:add/scale/3

# Loop ------------------------------------------------------------------------

# Clear collision detection heads
execute as @e[tag=bs.collision.detection.head] run function bs.core:entity/safe_kill

scoreboard players remove #A bs.data 1
execute at @s[tag=!bs.collision] if score #A bs.data matches 1.. run function bs.move:by_vector/child/loop