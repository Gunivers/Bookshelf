#Tire

#Cadence de tir
scoreboard players set @a[score_2ndWeapon_min=1,score_2ndWeapon=1,tag=Shoot2nd] cdShoot2nd 10
scoreboard players set @a[score_2ndWeapon_min=2,score_2ndWeapon=2,tag=Shoot2nd] cdShoot2nd 3

#Demande un tir
execute @a[tag=Shoot2nd] ~ ~ ~ scoreboard players operation @s DirProjType = @s 2ndWeapon
scoreboard players add @a[tag=Shoot2nd] DirProjType 100
scoreboard players tag @a[tag=Shoot2nd] add DirShoot

#Autres
scoreboard players remove @a[tag=Shoot2nd] 2ndAmoLoaded 1
execute @a[tag=Shoot2nd,score_2ndWeapon_min=1,score_2ndWeapon=1] ~ ~ ~ playsound Shoot.GP ambient @a[r=50]
execute @a[tag=Shoot2nd,score_2ndWeapon_min=2,score_2ndWeapon=2] ~ ~ ~ playsound Shoot.PP ambient @a[r=50] 
scoreboard players set @a[tag=Shoot2nd] TimerTool2 80 
scoreboard players tag @a remove Shoot2nd


