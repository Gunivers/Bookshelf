execute if score @s shot matches 1.. run summon armor_stand ~ ~ ~ {Invisible:0,Tags:["portal"],NoGravity:1}
execute if score @s shot matches 1.. as @e[type=armor_stand,tag=portal] run function entity/vectors/get_by_actual_orientation
execute if score @s shot matches 1.. as @e[type=armor_stand,tag=portal] run tag @s add move
execute if score @s shot matches 1.. run scoreboard players set shot 0