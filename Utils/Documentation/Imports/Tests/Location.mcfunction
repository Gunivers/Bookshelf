# NAME: GetXOriFromVec
# PATH: Gunivers-Lib:Entity/Calcul/GetXOriFromVec
 
# AUTHOR: KubbyDev
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# -
 
# INPUT: 
# - 
 
# OUTPUT: 
# - 
 
# NOTE:  
# -

# CONFIGURATION: <none> 
 
# CODE:

scoreboard players set @e[type=armor_stand,tag=TestImport] LocX 0
scoreboard players set @e[type=armor_stand,tag=TestImport] LocY 0
scoreboard players set @e[type=armor_stand,tag=TestImport] LocZ 0
scoreboard players tag @e[type=armor_stand,tag=ImportDone,score_LocX_min=0,score_LocY_min=0,score_LocZ_min=0] add Location
scoreboard players tag @e[type=armor_stand,tag=ImportToDo] add Location
execute @e[type=armor_stand,tag=ImportDone] ~ ~ ~ execute @s[tag=Location] ~ ~ ~ scoreboard players tag @e[type=armor_stand,tag=ImportToDo] remove Location

