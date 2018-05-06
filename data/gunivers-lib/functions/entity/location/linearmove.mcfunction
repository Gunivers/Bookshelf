#Name: Linear move
#Path: gunivers-lib:entity/location/linearmove

#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirements: /

#Input:
# - linear_move (tag)
# - Var1 (score dummy)

#Output: /

#Code:
scoreboard players set @s Var2 0

execute as @s positioned ^ ^ ^1 unless block ~ ~ ~ air run scoreboard players set @s Var2 1

execute as @s[scores={Var2=0}] positioned ^ ^ ^1 if block ~ ~-1 ~ air run scoreboard players set @s Var2 -1
execute as @s[scores={Var2=-1}] positioned ^ ^ ^1 if block ~ ~-2 ~ air run tag @s add noMove

execute as @s[scores={Var2=1}, tag=!noMove] positioned ^ ^ ^1 if block air ~ ~1 ~ run tag @s add noMove

execute as @s[tag=!noMove] store entity Motion[1] double 1 run scoreboard players get @s Var2

execute as @s[tag=!noMove, scores={Var1=1}] run tp @s ^ ^ ^0.25
execute as @s[tag=!noMove, scores={Var1=2}] run tp @s ^ ^ ^0.50
execute as @s[tag=!noMove, scores={Var1=3}] run tp @s ^ ^ ^0.75

tag @s remove noMove

#############################################################
# Var1 (score dummy): the speed of movements
# Var2 (score dummy): where it will go (forward up, forward, or forward down)
