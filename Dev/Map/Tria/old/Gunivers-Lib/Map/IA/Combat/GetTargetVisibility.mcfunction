#Fonction gérant les projectiles de test de visibilité

#Si une cible est atteinte
execute @e[tag=Fighting,score_Team_min=1,score_Team=1] ~ ~1.2 ~ scoreboard players operation @e[tag=TestVisible,score_Team_min=2,score_Team=2,r=2] TargetId = @s ShooterId
execute @e[tag=Fighting,score_Team_min=2,score_Team=2] ~ ~1.2 ~ scoreboard players operation @e[tag=TestVisible,score_Team_min=1,score_Team=1,r=2] TargetId = @s ShooterId
execute @e[tag=Fighting,score_Team_min=1,score_Team=1] ~ ~1.2 ~ scoreboard players tag @e[tag=TestVisible,score_Team_min=2,score_Team=2,r=2] add Visible
execute @e[tag=Fighting,score_Team_min=2,score_Team=2] ~ ~1.2 ~ scoreboard players tag @e[tag=TestVisible,score_Team_min=1,score_Team=1,r=2] add Visible

execute @e[tag=Visible] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/GiveVisibility
execute @e[tag=Visible] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/KillTestVisibles

#Si aucune cible (ni aucun mur) n'est atteint au bout de 4 secondes
execute @e[tag=TestVisible,score_CanBeAlive_min=0,score_CanBeAlive=0] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/GiveVisibility