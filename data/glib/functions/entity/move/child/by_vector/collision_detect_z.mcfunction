tag @s add CollisionZ

summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Tmp_Collision_Detection"]}
execute at @s as @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] run function glib:entity/location/accuracy/10-3/get_z
execute store result entity @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] Pos[2] double 0.001 run scoreboard players operation @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] LocZ += @s glib.var9

#Detection
execute at @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] if block ~ ~ ~ #glib:no_collision run tag @s remove CollisionZ
tag @s[scores={VectorZ=0}] remove CollisionZ


#DEBUG
execute if entity @s[tag=Debug] at @e[tag=Glib_Tmp_Collision_Detection] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"oak_button"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
execute at @s[tag=CollisionZ,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG

kill @e[tag=Glib_Tmp_Collision_Detection]
