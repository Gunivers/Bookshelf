# Add ShooterId

# @Author: KubbyDev

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - ShooterId (score dummy)
# - Import Random10

# Input values:
# - Null

# Output values:
# - ShooterId


#Donne un Id unique a une entité (un Id qui n'est pas encore utilisé)
scoreboard players add @s ShooterId 1

#Génération d'un Id aléatoire
scoreboard players operation @s[score_ShooterId_min=5,score_ShooterId=5] Tmp2 = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
scoreboard players operation @s[score_ShooterId_min=5,score_ShooterId=5] Tmp2 *= 10 Constant
scoreboard players operation @s[score_ShooterId_min=5,score_ShooterId=5] Tmp3 = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
scoreboard players operation @s[score_ShooterId_min=5,score_ShooterId=5] Tmp2 += @s Tmp3
scoreboard players operation @s[score_ShooterId_min=5,score_ShooterId=5] ShooterId = @s Tmp2

#Modification de l'Id s'il est deja utilisé
scoreboard players tag @s add Self
scoreboard players tag @s remove EncoreUnTour
scoreboard players operation @e[tag=!Self] ShooterId -= @s ShooterId
execute @e[score_ShooterId_min=0,score_ShooterId=0] ~ ~ ~ scoreboard players tag @e[tag=Self] add EncoreUnTour
scoreboard players operation @e[tag=!Self] ShooterId += @s ShooterId
scoreboard players tag @s remove Self
execute @s[tag=EncoreUnTour] ~ ~ ~ function Gunivers-Lib:Entity/Id/AddShooterId