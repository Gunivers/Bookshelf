#Regarde si une balle touche une entité avec le tag CanRecieveBullet
scoreboard players set @e[tag=CanRecieveBullet] Damage 0

execute @e[tag=Bullet,score_Team_min=1,score_Team=1] ~ ~-1.2 ~ scoreboard players operation @e[tag=CanRecieveBullet,score_Team_min=2,score_Team=2,r=1,c=1] Damage += @s Damage
execute @e[tag=Bullet,score_Team_min=2,score_Team=2] ~ ~-1.2 ~ scoreboard players operation @e[tag=CanRecieveBullet,score_Team_min=1,score_Team=1,r=1,c=1] Damage += @s Damage

execute @e[tag=CanRecieveBullet,score_Damage_min=1] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/BulletHit
execute @e[tag=Bullet] ~ ~ ~ particle fireworksSpark ~ ~ ~ 0 0 0 0 1 force