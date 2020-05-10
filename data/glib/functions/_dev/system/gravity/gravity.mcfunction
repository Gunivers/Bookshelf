# NAME: Gravity system
# PATH: glib:system/gravity

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# INPUT:
# - AffectedByGravity (tag)
# - SourceOfGravity (tag)
# - Mass (score)

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var7 dummy
scoreboard objectives add Var8 dummy
scoreboard objectives add Var9 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

scoreboard objectives add Mass dummy

# CONFIG:
scoreboard players set @e[tag=SourceOfGravity,tag=!Glib_Override_Config] Mass 1000
execute if entity @s[tag=!Glibe_Overrid_Config] run scoreboard players set Gravitational Constant 100

# CODE:
#____________________________________________________________________________________________________


scoreboard players operation @s Var7 = @s VectorX
scoreboard players operation @s Var8 = @s VectorY
scoreboard players operation @s Var9 = @s VectorZ

tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/System/Gravity]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":"   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":"   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]

execute at @s run function glib:system/child/gravity/calcul-result
tag @e[tag=SourceOfGravity] remove GravityCalculated

scoreboard players operation @s VectorX = @s Var7
scoreboard players operation @s VectorY = @s Var8
scoreboard players operation @s VectorZ = @s Var9

tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":"   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":"   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]




