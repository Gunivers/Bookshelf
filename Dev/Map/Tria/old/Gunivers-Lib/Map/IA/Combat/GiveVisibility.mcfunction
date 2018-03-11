#Donne le résultat d'un test de visibilité
scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] ShooterId -= @s ShooterId
scoreboard players operation @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] TargetId = @s TargetId
execute @s[tag=Visible] ~ ~ ~ scoreboard players tag @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] add HasTarget
execute @s[tag=!Visible] ~ ~ ~ scoreboard players tag @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] remove HasTarget
scoreboard players tag @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] add UpdateVisible
scoreboard players operation @e[tag=!Self] ShooterId += @s ShooterId
scoreboard players tag @s remove Self

#Cette fonction peut etre activée par
#Map/Tools/Projectiles/Collide: Mur rencontré
#Map/IA/Combat/GetTargetVisibility: Ennemi trouvé ou rien pendant 4 secondes