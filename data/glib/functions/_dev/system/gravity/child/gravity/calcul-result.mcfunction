
tag @e[distance=1..,tag=SourceOfGravity,limit=1,tag=!GravityCalculated] add GravitySelect

# Res = r^2 = distance^2
execute as @s at @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] run function glib:entity/location/accuracy/10-3/10-1/get_distance_squared_as_to_at

# Var1 = g = (G * M)/r^2
scoreboard players operation @s Var1 = Gravitational Constant
scoreboard players operation @s Var1 *= @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] Mass
scoreboard players operation @s Var1 /= @s Res

execute at @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] run function glib:entity/vector/get_as_to_at
function glib:entity/vector/normalize

scoreboard players operation @s VectorX *= 1000 Constant
scoreboard players operation @s VectorX /= @s Var1
scoreboard players operation @s VectorY *= 1000 Constant
scoreboard players operation @s VectorY /= @s Var1
scoreboard players operation @s VectorZ *= 1000 Constant
scoreboard players operation @s VectorZ /= @s Var1

execute at @s run particle end_rod ~ ~2 ~ 0 1 0 0 1 force
tellraw @a[tag=Debug] ["",{"text":"CALCUL -> ","color":"gray"},{"text":"Source: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Target: ","color":"red"},{"score":{"name":"@e[tag=SourceOfGravity,limit=1,tag=GravitySelect","objective":"Id"}},{"text":"   Var1: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]
tellraw @a[tag=Debug] ["",{"text":"CALCUL -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":"   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":"   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]

scoreboard players operation @s Var7 += @s VectorX
scoreboard players operation @s Var8 += @s VectorY
scoreboard players operation @s Var9 += @s VectorZ

tag @e[tag=GravitySelect] add GravityCalculated
tag @e[tag=GravitySelect] remove GravitySelect

execute if entity @e[distance=1..,tag=SourceOfGravity,limit=1,tag=!GravityCalculated] run function glib:system/child/gravity/calcul-result