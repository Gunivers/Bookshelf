#Name: Linear move
#Path: gunivers-lib:entity/location/linearmove

#Author: A~Z

#Version: 1.0
#Minecraft: 1.13

#Requirements: /

#Input:
# - @s (entity)
# - Var1 (score dummy)

#Output: /

#Code:
execute as @s unless score @s Var2 matches 0.. run scoreboard players operation @s Var2 = @s Var1

execute as @s at @s positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s add temp
tp @s[tag=!temp] ^ ^ ^1

execute as @s[tag=!temp] at @s positioned ^ ^ ^1 if block air ~ ~1 ~ run tp @s ~ ~1 ~
tag @s remove temp

scoreboard players remove @s Var2 1
execute as @s[scores={Var2=1..}] at @s run function gunivers-lib:entity/location/linearmove

scoreboard players reset @s Var2

#############################################################
# Var1 (score dummy): the speed of movements = times to execute the function
# Var2 (score dummy): the times left to execute the function
# temp (tag): Added when there is a block ^ ^ ^1