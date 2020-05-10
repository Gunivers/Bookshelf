execute at @s run particle end_rod ~ ~2 ~ 0 1 0 0 1 force
tag @e[distance=1..,tag=SourceOfGravity,limit=1,tag=!GravityCalculated] add GravitySelect

execute as @s at @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] run function glib:entity/location/accuracy/10-3/get_relative_as_to_at

tellraw @a[tag=Debug] ["",{"text":"TEST -> ","color":"gray"},{"text":"LocX: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocX"}}]

scoreboard players operation @s Glib_R_LocX *= @s Glib_R_LocX
scoreboard players operation @s Glib_R_LocY *= @s Glib_R_LocY
scoreboard players operation @s Glib_R_LocZ *= @s Glib_R_LocZ

scoreboard players operation @s VectorX *= @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] Mass
scoreboard players operation @s VectorX *= 10
scoreboard players operation @s VectorX /= @s Glib_R_LocX
scoreboard players operation @s VectorY *= @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] Mass
scoreboard players operation @s VectorY *= 10
scoreboard players operation @s VectorY /= @s Glib_R_LocY
scoreboard players operation @s VectorZ *= @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] Mass
scoreboard players operation @s VectorZ *= 10
scoreboard players operation @s VectorZ /= @s Glib_R_LocZ


tellraw @a[tag=Debug] ["",{"text":"TEST -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}}]

scoreboard players operation @s Var7 += @s VectorX
scoreboard players operation @s Var8 += @s VectorY
scoreboard players operation @s Var9 += @s VectorZ

tellraw @a[tag=Debug] ["",{"text":"TEST -> ","color":"gray"},{"text":"Var1: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]

tag @e[tag=GravitySelect] add GravityCalculated

execute if entity @e[distance=1..,tag=SourceOfGravity,limit=1,tag=!GravityCalculated] run function glib:system/child/gravity/calcul-result