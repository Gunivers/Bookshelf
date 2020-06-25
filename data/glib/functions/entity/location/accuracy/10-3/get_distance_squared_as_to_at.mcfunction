#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/accuracy/10-3/get_distance_squared_as_to_at
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var4 dummy

scoreboard objectives add glib.res0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.var0 run data get entity @s Pos[0] 1000
execute store result score @s glib.var1 run data get entity @s Pos[1] 1000
execute store result score @s glib.var2 run data get entity @s Pos[2] 1000

summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Get_Distance"]}

execute store result score @s glib.var3 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[0] 1000
execute store result score @s glib.var4 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[1] 1000
execute store result score @s glib.var4 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[2] 1000

kill @e[tag=Glib_Get_Distance]

scoreboard players operation @s glib.var3 -= @s glib.var0
scoreboard players operation @s glib.var4 -= @s glib.var1
scoreboard players operation @s glib.var4 -= @s glib.var2

scoreboard players operation @s glib.var3 *= @s glib.var3
scoreboard players operation @s glib.var4 *= @s glib.var4
scoreboard players operation @s glib.var4 *= @s glib.var4

scoreboard players operation @s glib.res0 = @s glib.var3
scoreboard players operation @s glib.res0 += @s glib.var4
scoreboard players operation @s glib.res0 += @s glib.var4
