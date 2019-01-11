# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_vector/collision_detect_neg_x

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

# CODE:

#----------------#
# Collision on X #
#----------------#

tag @s add CollisionX

summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Glib_Tmp_Collision_Detection"]}
execute at @s as @e[type=armor_stand,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] run function gunivers-lib:entity/location/accurate/get_x
execute store result entity @e[type=armor_stand,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] Pos[0] double 0.001 run scoreboard players operation @e[type=armor_stand,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] LocX += @s Var1

execute at @e[type=armor_stand,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] if block ~ ~ ~ air run tag @s remove CollisionX
# execute at @e[tag=Glib_Tmp_Collision_Detection] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"oak_button"},NoGravity:1,Time:50,Tags:["Debug"]}
kill @e[tag=Glib_Tmp_Collision_Detection]


#DEBUG
#execute at @s[tag=CollisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG
