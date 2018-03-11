#Recherche de cibles
execute @s[score_Team_min=1,score_Team=1] ~ ~ ~ scoreboard players operation @s TargetId = @r[type=armor_stand,tag=Fighting,score_Team=2,score_Team_min=2] ShooterId
execute @s[score_Team_min=2,score_Team=2] ~ ~ ~ scoreboard players operation @s Random = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=3] Random
execute @s[score_Team_min=2,score_Team=2,score_Random_min=1,score_Random=1] ~ ~ ~ scoreboard players operation @s TargetId = @r[type=player,tag=Fighting] ShooterId
execute @s[score_Team_min=2,score_Team=2,score_Random_min=2] ~ ~ ~ scoreboard players operation @s TargetId = @r[type=armor_stand,tag=Fighting,score_Team=1,score_Team_min=1] ShooterId
scoreboard players tag @s add IsTargetVisible
scoreboard players tag @s remove SearchTarget