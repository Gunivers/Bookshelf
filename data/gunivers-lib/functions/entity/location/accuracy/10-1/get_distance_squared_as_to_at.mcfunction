# NAME: Get Distance
# PATH: gunivers-lib:entity/location/get_distance_as_to_at

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# OUTPUT:
# - Res (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy

scoreboard objectives add Res dummy

# CODE:
#____________________________________________________________________________________________________

execute store result score @s Var1 run data get entity @s Pos[0] 10
execute store result score @s Var2 run data get entity @s Pos[1] 10
execute store result score @s Var3 run data get entity @s Pos[2] 10

summon area_effect_cloud ~ ~ ~ {Tags:["Glib_Get_Distance"]}

execute store result score @s Var4 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[0] 10
execute store result score @s Var5 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[1] 10
execute store result score @s Var6 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[2] 10

kill @e[tag=Glib_Get_Distance]

scoreboard players operation @s Var4 -= @s Var1
scoreboard players operation @s Var5 -= @s Var2
scoreboard players operation @s Var6 -= @s Var3

scoreboard players operation @s Var4 *= @s Var4
scoreboard players operation @s Var5 *= @s Var5
scoreboard players operation @s Var6 *= @s Var6

scoreboard players operation @s Res = @s Var4
scoreboard players operation @s Res += @s Var5
scoreboard players operation @s Res += @s Var6
