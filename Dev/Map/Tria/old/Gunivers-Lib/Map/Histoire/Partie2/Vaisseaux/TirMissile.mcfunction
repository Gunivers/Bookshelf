#Tire

#Demande un tir
scoreboard players set @e[score_VehicleType_min=11,score_VehicleType=19,score_IsControled_min=1,r=2,c=1] DirProjType 1002
scoreboard players tag @e[score_VehicleType_min=11,score_VehicleType=19,score_IsControled_min=1,r=2,c=1] add DirShoot

#Autres
playsound Plane.TirMissile ambient @a[r=50]
scoreboard players set @s Reloading2nd 200
scoreboard players tag @s remove TirMissile