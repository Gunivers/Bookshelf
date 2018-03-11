scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] ShooterId -= @s ShooterId

scoreboard players operation @s VectorX = @e[score_ShooterId_min=0,score_ShooterId=0,tag=DirShoot] VectorX
scoreboard players operation @s VectorY = @e[score_ShooterId_min=0,score_ShooterId=0,tag=DirShoot] VectorY
scoreboard players operation @s VectorZ = @e[score_ShooterId_min=0,score_ShooterId=0,tag=DirShoot] VectorZ

scoreboard players operation @e[tag=!Self] ShooterId += @s ShooterId
scoreboard players tag @s remove Self
