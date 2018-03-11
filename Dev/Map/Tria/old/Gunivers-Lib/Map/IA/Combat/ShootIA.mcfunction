#Tire

#Cadence de tir
scoreboard players set @e[score_1stWeapon_min=1,score_1stWeapon=1,tag=ShootIA] cdShoot1st 4
scoreboard players set @e[score_1stWeapon_min=2,score_1stWeapon=2,tag=ShootIA] cdShoot1st 15
scoreboard players set @e[score_1stWeapon_min=4,score_1stWeapon=4,tag=ShootIA] cdShoot1st 12

#Demande un tir
execute @e[tag=ShootIA] ~ ~ ~ scoreboard players operation @s DirProjType = @s 1stWeapon
execute @e[tag=ShootIA] ~ ~ ~ scoreboard players add @s DirProjType 50
scoreboard players tag @e[tag=ShootIA] add DirShoot

#Autres
scoreboard players remove @e[tag=ShootIA] 1stAmoLoaded 1
execute @e[tag=ShootIA,score_1stWeapon_min=1,score_1stWeapon=1] ~ ~ ~ playsound Shoot.FA ambient @a[r=50]
execute @e[tag=ShootIA,score_1stWeapon_min=2,score_1stWeapon=2] ~ ~ ~ playsound Shoot.Sniper ambient @a[r=50] 
execute @e[tag=ShootIA,score_1stWeapon_min=4,score_1stWeapon=4] ~ ~ ~ playsound Shoot.Fusil ambient @a[r=50] 
scoreboard players tag @e remove ShootIA
