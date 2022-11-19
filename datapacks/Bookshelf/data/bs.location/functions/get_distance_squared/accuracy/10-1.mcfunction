#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:accuracy/10-1
# Documentation: https://glib-core.readthedocs.io//entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT










#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s bs.var0 run data get entity @s Pos[0] 10
execute store result score @s bs.var1 run data get entity @s Pos[1] 10
execute store result score @s bs.var2 run data get entity @s Pos[2] 10

summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Get_Distance"]}

execute store result score @s bs.var3 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[0] 10
execute store result score @s bs.var4 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[1] 10
execute store result score @s bs.var4 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[2] 10

kill @e[tag=Glib_Get_Distance]

scoreboard players operation @s bs.var3 -= @s bs.var0
scoreboard players operation @s bs.var4 -= @s bs.var1
scoreboard players operation @s bs.var4 -= @s bs.var2

scoreboard players operation @s bs.var3 *= @s bs.var3
scoreboard players operation @s bs.var4 *= @s bs.var4
scoreboard players operation @s bs.var4 *= @s bs.var4

scoreboard players operation @s bs.res0 = @s bs.var3
scoreboard players operation @s bs.res0 += @s bs.var4
scoreboard players operation @s bs.res0 += @s bs.var4
