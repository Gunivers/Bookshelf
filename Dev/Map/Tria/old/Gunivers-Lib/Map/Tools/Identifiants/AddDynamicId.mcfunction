#Donne un Id unique a une entité (un Id qui n'est pas encore utilisé)
scoreboard players add @s DynamicId 1

#Génération d'un Id aléatoire
scoreboard players operation @s[score_DynamicId_min=1,score_DynamicId=1] Tmp2 = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
scoreboard players operation @s[score_DynamicId_min=1,score_DynamicId=1] Tmp2 *= 10 Constant
scoreboard players operation @s[score_DynamicId_min=1,score_DynamicId=1] Tmp3 = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
scoreboard players operation @s[score_DynamicId_min=1,score_DynamicId=1] Tmp2 += @s Tmp3
scoreboard players operation @s[score_DynamicId_min=1,score_DynamicId=1] DynamicId = @s Tmp2

#Modification de l'Id s'il est deja utilisé
scoreboard players tag @s add Self
scoreboard players tag @s remove EncoreUnTour
scoreboard players operation @e[tag=!Self] DynamicId -= @s DynamicId
execute @e[score_DynamicId_min=0,score_DynamicId=0] ~ ~ ~ scoreboard players tag @e[tag=Self] add EncoreUnTour
scoreboard players operation @e[tag=!Self] DynamicId += @s DynamicId
scoreboard players tag @s remove Self
execute @s[tag=EncoreUnTour] ~ ~ ~ function Gunivers-Lib:Map/Tools/Identifiants/AddDynamicId