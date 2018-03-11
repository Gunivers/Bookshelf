#Demande un Tir
scoreboard players tag @e[score_1stAmoLoaded_min=1,score_Reloading1st=0,score_cdShoot1st=0,tag=TireIA] add ShootIA
function Gunivers-Lib:Map/IA/Combat/ShootIA if @e[tag=ShootIA]

#Temps de Rechargement
scoreboard players set @e[score_1stAmoLoaded=0,score_Reloading1st=0,score_cdShoot1st=0,score_1stWeapon_min=1,score_1stWeapon=1,tag=TireIA] Reloading1st 40
scoreboard players set @e[score_1stAmoLoaded=0,score_Reloading1st=0,score_cdShoot1st=0,score_1stWeapon_min=2,score_1stWeapon=2,tag=TireIA] Reloading1st 60
scoreboard players set @e[score_1stAmoLoaded=0,score_Reloading1st=0,score_cdShoot1st=0,score_1stWeapon_min=4,score_1stWeapon=4,tag=TireIA] Reloading1st 40

#Met a jour les scores a la fin du temps de rechargement
execute @e[score_Reloading1st_min=1,score_Reloading1st=1,tag=TireIA] ~ ~ ~ scoreboard players operation @s 1stAmoLoaded = @s 1stMaxAmo
scoreboard players remove @e[score_Reloading1st_min=1,tag=TireIA] Reloading1st 1

#Timer pour la cadence de tir
scoreboard players remove @e[tag=TireIA,score_cdShoot1st_min=1] cdShoot1st 1