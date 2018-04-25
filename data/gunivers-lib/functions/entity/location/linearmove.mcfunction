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
scoreboard players set @e[tag=linear_move] Var2 0

execute as @e[tag=linear_move] positioned ^ ^ ^1 unless block ~ ~ ~ air run scoreboard players set @s Var2 1

execute as @e[tag=linear_move,scores={Var2=0}] positioned ^ ^ ^1 if block ~ ~-1 ~ air run scoreboard players set @s Var2 -1
execute as @e[tag=linear_move,scores={Var2=-1}] positioned ^ ^ ^1 if block ~ ~-2 ~ air run tag @s remove linear_move

execute as @e[tag=linear_move,scores={Var2=1}] positioned ^ ^ ^1 if block air ~ ~1 ~ run tag @s remove linear_move

execute as @e[tag=linear_move] store entity Motion[1] double 1 run scoreboard players get @s Var2
execute as @e[tag=linear_move] store entity Motion[2] double 10 run scoreboard players get @s Var1

#############################################################
# Var1 (score dummy): the speed of movements
# Var2 (score dummy): where it will go (forward up, forward, or forward down)
