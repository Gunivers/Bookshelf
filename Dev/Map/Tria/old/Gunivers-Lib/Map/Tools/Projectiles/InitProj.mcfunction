#Dégats
scoreboard players set @s[tag=Bullet,name=BulletFA] Damage 4
scoreboard players set @s[tag=Bullet,name=BulletSniper] Damage 8
scoreboard players set @s[tag=Bullet,name=BulletFusil] Damage 4
scoreboard players set @s[tag=Bullet,name=BulletGP] Damage 3
scoreboard players set @s[tag=Bullet,name=BulletPP] Damage 2
scoreboard players set @s[tag=PlaneBullet] Damage 5
scoreboard players set @s[tag=MissileAuto] Damage 100

#Vitesse de déplacement (de 1 à 400 centiblocks/tick)
scoreboard players set @s[tag=Bullet] VectorSpeed 200
scoreboard players set @s[tag=TestVisible] VectorSpeed 200
scoreboard players set @s[tag=ObusTank] VectorSpeed 150
scoreboard players set @s[tag=PlaneBullet] VectorSpeed 400
scoreboard players set @s[tag=MissileAuto] VectorSpeed 300
scoreboard players set @s[tag=Grenade] VectorSpeed 80

#Temps de vie
scoreboard players set @s[tag=Bullet] CanBeAlive -50
scoreboard players set @s[tag=TestVisible] CanBeAlive -80
scoreboard players set @s[tag=PlaneBullet] CanBeAlive -50
scoreboard players set @s[tag=ObusTank] CanBeAlive -40
scoreboard players set @s[tag=MissileAuto] CanBeAlive -60
scoreboard players set @s[tag=Grenade] CanBeAlive -40