#Demande les mises a jour des positions
execute @e[tag=ShootVisTest,score_Team_min=1,score_Team=1] ~ ~ ~ execute @e[tag=Fighting,score_Team_min=2,score_Team=2] ~ ~ ~ scoreboard players tag @s[tag=!LocUpdated] add AskLocation
execute @e[tag=ShootVisTest,score_Team_min=2,score_Team=2] ~ ~ ~ execute @e[tag=Fighting,score_Team_min=1,score_Team=1] ~ ~ ~ scoreboard players tag @s[tag=!LocUpdated] add AskLocation

#Vérifie qu'il existe des cibles potentielles (team ennemie et position a jour)
# Sortie: Tag CanFindTarget si il existe des cibles ennemies ayant leur position a jour ET OnlyPlayer si la seule entité dans ce cas est le joueur
function Gunivers-Lib:Map/IA/Combat/CanFindTarget 

#Recherche de cibles
execute @e[tag=CanFindTarget,score_Team_min=1,score_Team=1] ~ ~ ~ scoreboard players operation @s TargetId = @r[type=armor_stand,tag=Fighting,score_Team=2,score_Team_min=2] ShooterId
execute @e[tag=CanFindTarget,score_Team_min=2,score_Team=2] ~ ~ ~ scoreboard players operation @s Random = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=3] Random
execute @e[tag=CanFindTarget,score_Team_min=2,score_Team=2,score_Random_min=1,score_Random=1] ~ ~ ~ scoreboard players operation @s TargetId = @r[type=player,tag=Fighting] ShooterId
execute @e[tag=CanFindTarget,score_Team_min=2,score_Team=2,score_Random_min=2] ~ ~ ~ scoreboard players operation @s[tag=!OnlyPlayer] TargetId = @r[type=armor_stand,tag=Fighting,score_Team=1,score_Team_min=1] ShooterId

#Calcule un vecteur vers la cible et regarde si il y a un obstacle
execute @e[tag=CanFindTarget] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/GetVectorToTargetId
scoreboard players set @e[tag=CanFindTarget] DirProjType -1
scoreboard players tag @e[tag=CanFindTarget] add DirShoot

scoreboard players tag @e remove ShootVisTest

