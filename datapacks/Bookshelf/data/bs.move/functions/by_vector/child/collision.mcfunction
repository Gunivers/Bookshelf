#__________________________________________________
# bs.collision on X

execute as @s[scores={bs.collision=1..}] at @s run function bs.move:by_vector/child/collision_detect_x
tag @s[scores={bs.collision=1..},tag=bs.collisionX] add bs.collision

#__________________________________________________
# bs.collision on Y

execute as @s[scores={bs.collision=1..}] at @s run function bs.move:by_vector/child/collision_detect_y
tag @s[scores={bs.collision=1..},tag=bs.collisionY] add bs.collision

#__________________________________________________
# bs.collision on Z

execute as @s[scores={bs.collision=1..}] at @s run function bs.move:by_vector/child/collision_detect_z
tag @s[scores={bs.collision=1..},tag=bs.collisionZ] add bs.collision

#__________________________________________________
# Back to last position

tag @s[tag=bs.move.by_vector.back_to_last_pos] remove bs.move.by_vector.back_to_last_pos

execute if entity @s[tag=bs.collisionX,tag=bs.collisionZ] run function bs.move:by_vector/child/last_position
execute if entity @s[tag=bs.collisionX,tag=bs.collisionY,tag=!bs.move.by_vector.back_to_last_pos] run function bs.move:by_vector/child/last_position
execute if entity @s[tag=bs.collisionZ,tag=bs.collisionY,tag=!bs.move.by_vector.back_to_last_pos] run function bs.move:by_vector/child/last_position

#__________________________________________________
# Reactions

execute if entity @s[tag=bs.collision] run scoreboard players operation @s bs.vector.x = #backup.move.vectorX bs
execute if entity @s[tag=bs.collision] run scoreboard players operation @s bs.vector.y = #backup.move.vectorY bs
execute if entity @s[tag=bs.collision] run scoreboard players operation @s bs.vector.z = #backup.move.vectorZ bs

execute if entity @s[tag=bs.collision] run scoreboard players set move.decomposition.factor bs 0
execute if entity @s[tag=bs.collision] run function bs.move:by_vector/config/collision/_main_

execute if entity @s[tag=bs.collision] run scoreboard players operation #backup.move.vectorX bs = @s bs.vector.x
execute if entity @s[tag=bs.collision] run scoreboard players operation #backup.move.vectorY bs = @s bs.vector.y
execute if entity @s[tag=bs.collision] run scoreboard players operation #backup.move.vectorZ bs = @s bs.vector.z
