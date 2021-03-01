#__________________________________________________
# glib.collision on X

execute as @s[scores={glib.collision=1..}] at @s run function glib:move/by_vector/child/collision_detect_x
tag @s[scores={glib.collision=1..},tag=glib.collisionX] add glib.collision

#__________________________________________________
# glib.collision on Y

execute as @s[scores={glib.collision=1..}] at @s run function glib:move/by_vector/child/collision_detect_y
tag @s[scores={glib.collision=1..},tag=glib.collisionY] add glib.collision

#__________________________________________________
# glib.collision on Z

execute as @s[scores={glib.collision=1..}] at @s run function glib:move/by_vector/child/collision_detect_z
tag @s[scores={glib.collision=1..},tag=glib.collisionZ] add glib.collision

#__________________________________________________
# Back to last position

tag @s[tag=glib.move.by_vector.back_to_last_pos] remove glib.move.by_vector.back_to_last_pos

execute if entity @s[tag=glib.collisionX,tag=glib.collisionZ] run function glib:move/by_vector/child/last_position
execute if entity @s[tag=glib.collisionX,tag=glib.collisionY,tag=!glib.move.by_vector.back_to_last_pos] run function glib:move/by_vector/child/last_position
execute if entity @s[tag=glib.collisionZ,tag=glib.collisionY,tag=!glib.move.by_vector.back_to_last_pos] run function glib:move/by_vector/child/last_position

#__________________________________________________
# Reactions

execute if entity @s[tag=glib.collision] run scoreboard players operation @s glib.vectorX = #backup.move.vectorX glib
execute if entity @s[tag=glib.collision] run scoreboard players operation @s glib.vectorY = #backup.move.vectorY glib
execute if entity @s[tag=glib.collision] run scoreboard players operation @s glib.vectorZ = #backup.move.vectorZ glib

execute if entity @s[tag=glib.collision] run scoreboard players set move.decomposition.factor glib 0
execute if entity @s[tag=glib.collision] run function glib:move/by_vector/config/collision/_main_

execute if entity @s[tag=glib.collision] run scoreboard players operation #backup.move.vectorX glib = @s glib.vectorX
execute if entity @s[tag=glib.collision] run scoreboard players operation #backup.move.vectorY glib = @s glib.vectorY
execute if entity @s[tag=glib.collision] run scoreboard players operation #backup.move.vectorZ glib = @s glib.vectorZ
