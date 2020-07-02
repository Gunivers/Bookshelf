execute as @s[scores={Collision=1..}] at @s run function glib_child:move/by_vector/collision_detect_x
tag @s[scores={Collision=1..},tag=CollisionX] add Collision

#----------------#
# Collision on Y #
#----------------#

execute as @s[scores={Collision=1..}] at @s run function glib_child:move/by_vector/collision_detect_y
tag @s[scores={Collision=1..},tag=CollisionY] add Collision

#----------------#
# Collision on Z #
#----------------#

execute as @s[scores={Collision=1..}] at @s run function glib_child:move/by_vector/collision_detect_z
tag @s[scores={Collision=1..},tag=CollisionZ] add Collision


#------------------------#
# CBack to last position #
#------------------------#
tag @s remove Glib_Back_to_last_pos

execute if entity @s[tag=CollisionX,tag=CollisionZ] run function glib_child:move/by_vector/last_position
execute if entity @s[tag=CollisionX,tag=CollisionY,tag=!Glib_Back_to_last_pos] run function glib_child:move/by_vector/last_position
execute if entity @s[tag=CollisionZ,tag=CollisionY,tag=!Glib_Back_to_last_pos] run function glib_child:move/by_vector/last_position

#-----------#
# Reactions #
#-----------#

scoreboard players set @s[tag=Collision] glib.var3 0

execute if entity @s[tag=Collision] run function glib_config:move/collision_reactions/_main_
