#Défini une cible (la plus proche)
scoreboard players set @s TargetId 0
execute @s[score_Team_min=1,score_Team=1] ~ ~ ~ scoreboard players operation @s TargetId = @e[tag=Plane,score_Team_min=2,score_Team=2,c=1] ShooterId
execute @s[score_Team_min=2,score_Team=2] ~ ~ ~ scoreboard players operation @s TargetId = @e[tag=Plane,score_Team_min=1,score_Team=1,c=1] ShooterId
scoreboard players tag @s[score_TargetId=0] remove PlaneFonce

#Calcule un vecteur vers la cible
function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/GetVectorToTargetIdT if @s[tag=PlaneFonce]




















































