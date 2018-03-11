#Tire

#Cadence de tir
scoreboard players set @a[score_1stWeapon_min=1,score_1stWeapon=1,tag=Shoot1st] cdShoot1st 2
scoreboard players set @a[score_1stWeapon_min=2,score_1stWeapon=2,tag=Shoot1st] cdShoot1st 15
scoreboard players set @a[score_1stWeapon_min=3,score_1stWeapon=3,tag=Shoot1st] cdShoot1st 20

#Demande un tir
execute @a[tag=Shoot1st] ~ ~ ~ scoreboard players operation @s DirProjType = @s 1stWeapon
scoreboard players tag @a[score_DirProjType_min=1,score_DirProjType=2,tag=Shoot1st] add DirShoot
execute @a[score_DirProjType_min=3,score_DirProjType=3,tag=Shoot1st] ~ ~ ~ function Gunivers-Lib:Map/ArmesSol/TirPompe

#Autres
scoreboard players remove @a[tag=Shoot1st] 1stAmoLoaded 1
execute @a[tag=Shoot1st,score_1stWeapon_min=1,score_1stWeapon=1] ~ ~ ~ playsound Shoot.FA ambient @a[r=50]
execute @a[tag=Shoot1st,score_1stWeapon_min=2,score_1stWeapon=2] ~ ~ ~ playsound Shoot.Sniper ambient @a[r=50] 
execute @a[tag=Shoot1st,score_1stWeapon_min=3,score_1stWeapon=3] ~ ~ ~ playsound Shoot.Pompe ambient @a[r=50] 
scoreboard players set @a[tag=Shoot1st] TimerTool2 80
scoreboard players tag @a remove Shoot1st

