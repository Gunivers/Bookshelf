#Tire

#Demande un tir
execute @e[tag=TankTir] ~ ~ ~ scoreboard players set @s[tag=ModeTir] DirProjType 2501
execute @e[tag=TankTir] ~ ~ ~ scoreboard players tag @s[tag=ModeTir] add DirShoot
execute @e[tag=TankTir,score_IsControled_min=1] ~ ~1 ~ scoreboard players set @e[score_InVehicle_min=2,score_InVehicle=2,r=2,c=1] DirProjType 2001
execute @e[tag=TankTir,score_IsControled_min=1] ~ ~1 ~ scoreboard players tag @e[score_InVehicle_min=2,score_InVehicle=2,r=2,c=1] add DirShoot

#Autres
execute @e[tag=TankTir] ~ ~ ~ playsound Shoot.Tank ambient @a[r=50]
scoreboard players set @e[tag=TankTir,score_IsControled_min=1] Reloading 40
execute @e[tag=TankTir] ~ ~ ~ scoreboard players set @s[tag=TankIA] Reloading 80
execute @e[tag=TankTir] ~ ~ ~ scoreboard players set @s[tag=CanonIA] Reloading 100
scoreboard players tag @e remove TankTir
