execute at @s run particle end_rod ~ ~2 ~ 0 1 0 0 1 force
tag @e[distance=1..,tag=SourceOfGravity,limit=1,tag=!GravityCalculated] add GravitySelect

execute as @s at @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] run function gunivers-lib:entity/location/get_distance_squared_as_to_at

# execute store result score @s Var1 run data get entity @s Pos[0] 10
# execute store result score @s Var2 run data get entity @s Pos[1] 10
# execute store result score @s Var3 run data get entity @s Pos[2] 10

# summon area_effect_cloud ~ ~ ~ {Tags:["Glib_Get_Distance"]}

# execute store result score @s Var4 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[0] 10
# execute store result score @s Var5 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[1] 10
# execute store result score @s Var6 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[2] 10

# kill @e[tag=Glib_Get_Distance]

# scoreboard players operation @s Var4 -= @s Var1
# scoreboard players operation @s Var5 -= @s Var2
# scoreboard players operation @s Var6 -= @s Var3

# scoreboard players operation @s Var4 *= @s Var4
# scoreboard players operation @s Var5 *= @s Var5
# scoreboard players operation @s Var6 *= @s Var6

# scoreboard players operation @s Res = @s Var4
# scoreboard players operation @s Res += @s Var5
# scoreboard players operation @s Res += @s Var6



execute at @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] run function gunivers-lib:entity/vector/get_as_to_at

scoreboard players operation @s VectorSpeed = Gravitational Constant
scoreboard players operation @s VectorSpeed *= @e[tag=SourceOfGravity,limit=1,tag=GravitySelect] Mass
scoreboard players operation @s VectorSpeed /= @s Res

tag @s add Glib_Override_Config
function gunivers-lib:entity/vector/normalize
tag @s remove Glib_Override_Config

tellraw @a[tag=Debug] ["",{"text":"TEST -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}}]

scoreboard players operation @s Var7 += @s VectorX
scoreboard players operation @s Var8 += @s VectorY
scoreboard players operation @s Var9 += @s VectorZ

tellraw @a[tag=Debug] ["",{"text":"TEST -> ","color":"gray"},{"text":"Var1: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]

tag @e[tag=GravitySelect] add GravityCalculated

execute if entity @e[distance=1..,tag=SourceOfGravity,limit=1,tag=!GravityCalculated] run function gunivers-lib:system/child/gravity/calcul-result