#Tire

#Demande un tir
scoreboard players set @e[tag=TirBalle,score_VehicleType_min=11,score_VehicleType=19] DirProjType 1501
execute @a[tag=TirBalle] ~ ~ ~ scoreboard players set @e[score_VehicleType_min=11,score_VehicleType=19,score_IsControled_min=1,r=2,c=1] DirProjType 1501
execute @e[tag=TirBalle] ~ ~ ~ scoreboard players tag @e[score_VehicleType_min=11,score_VehicleType=19,r=2,c=1] add DirShoot
execute @e[tag=TirBalle,type=!player] ~ ~ ~ scoreboard players operation @s VectorX = @s TargetVectorX
execute @e[tag=TirBalle,type=!player] ~ ~ ~ scoreboard players operation @s VectorY = @s TargetVectorY
execute @e[tag=TirBalle,type=!player] ~ ~ ~ scoreboard players operation @s VectorZ = @s TargetVectorZ


#Autres
execute @e[tag=TirBalle] ~ ~ ~ playsound Plane.TirBalle ambient @a[r=50]
scoreboard players set @e[tag=TirBalle] cdShoot1st 5
scoreboard players set @a[tag=TirBalle] cdShoot1st 2
scoreboard players remove @e[tag=TirBalle] 1stAmoLoaded 1
scoreboard players tag @e remove TirBalle
