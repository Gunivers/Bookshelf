execute as @s[scores={glib.collision=1..}] at @s run function glib_child:move/by_vector/collision_detect_x
tag @s[scores={glib.collision=1..},tag=glib.collisionX] add glib.collision

#----------------#
# glib.collision on Y #
#----------------#

execute as @s[scores={glib.collision=1..}] at @s run function glib_child:move/by_vector/collision_detect_y
tag @s[scores={glib.collision=1..},tag=glib.collisionY] add glib.collision

#----------------#
# glib.collision on Z #
#----------------#

execute as @s[scores={glib.collision=1..}] at @s run function glib_child:move/by_vector/collision_detect_z
tag @s[scores={glib.collision=1..},tag=glib.collisionZ] add glib.collision


#------------------------#
# CBack to last position #
#------------------------#
tag @s remove Glib_Back_to_last_pos

execute if entity @s[tag=glib.collisionX,tag=glib.collisionZ] run function glib_child:move/by_vector/last_position
execute if entity @s[tag=glib.collisionX,tag=glib.collisionY,tag=!Glib_Back_to_last_pos] run function glib_child:move/by_vector/last_position
execute if entity @s[tag=glib.collisionZ,tag=glib.collisionY,tag=!Glib_Back_to_last_pos] run function glib_child:move/by_vector/last_position

#-----------#
# Reactions #
#-----------#

scoreboard players set @s[tag=glib.collision] glib.var3 0

execute if entity @s[tag=glib.collision] run function glib_config:move/collision_reactions/_main_
