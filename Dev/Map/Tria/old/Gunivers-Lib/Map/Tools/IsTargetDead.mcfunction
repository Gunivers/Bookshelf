#Regarde si l'entité ayant l'id stocké dans le TargetId de l'executant est morte
scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] ShooterId -= @s TargetId
execute @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] ~ ~ ~ execute @s[tag=!Dead] ~ ~ ~ scoreboard players tag @e[tag=Self] remove TargetDead
scoreboard players operation @e[tag=!Self] ShooterId += @s TargetId
scoreboard players tag @s remove Self