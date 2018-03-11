#Supprime les projectiles de test de visibilité ayant le meme Id que l'executant (tireur ou autre test de visibilité)
scoreboard players operation @e ShooterId -= @s ShooterId
kill @e[tag=TestVisible,score_ShooterId_min=0,score_ShooterId=0]
scoreboard players tag @e[tag=Fighting,score_ShooterId_min=0,score_ShooterId=0] remove WaitTestResult
scoreboard players operation @e ShooterId += @s ShooterId
