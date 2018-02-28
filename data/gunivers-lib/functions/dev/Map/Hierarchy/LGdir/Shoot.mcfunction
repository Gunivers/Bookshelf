#initialization

execute @e[tag=DirShoot] ~ ~ ~ /summon armor_stand ~ ~ ~ {Tags:["DirProjectile","DirLoad"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,Small:0,ArmorItems:[{},{},{},{id:"air",Damage:0,Count:1b}]}
execute @e[tag=DirShoot] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] Class = @e[tag=DirShoot,c=1] Class
execute @e[tag=DirShoot,team=Blue] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] Class *= Neg Constant
execute @e[tag=DirShoot] ~ ~ ~ /tp @e[tag=DirLoad,c=1] @e[tag=DirShoot,c=1]

#get orientation

scoreboard players set @e[tag=DirLoad] DirAngP 0
scoreboard players set @e[tag=DirLoad] DirAngT 0
scoreboard players add @e[tag=DirLoad,rym=256] DirAngP 256
tp @e[tag=DirLoad,rym=256] ~ ~ ~ ~-256 ~
scoreboard players add @e[tag=DirLoad,rym=128] DirAngP 128
tp @e[tag=DirLoad,rym=128] ~ ~ ~ ~-128 ~
scoreboard players add @e[tag=DirLoad,rym=64] DirAngP 64
tp @e[tag=DirLoad,rym=64] ~ ~ ~ ~-64 ~
scoreboard players add @e[tag=DirLoad,rym=32] DirAngP 32
tp @e[tag=DirLoad,rym=32] ~ ~ ~ ~-32 ~
scoreboard players add @e[tag=DirLoad,rym=16] DirAngP 16
tp @e[tag=DirLoad,rym=16] ~ ~ ~ ~-16 ~
scoreboard players add @e[tag=DirLoad,rym=8] DirAngP 8
tp @e[tag=DirLoad,rym=8] ~ ~ ~ ~-8 ~
scoreboard players add @e[tag=DirLoad,rym=4] DirAngP 4
tp @e[tag=DirLoad,rym=4] ~ ~ ~ ~-4 ~
scoreboard players add @e[tag=DirLoad,rym=2] DirAngP 2 
tp @e[tag=DirLoad,rym=2] ~ ~ ~ ~-2 ~
scoreboard players add @e[tag=DirLoad,rym=1] DirAngP 1
tp @e[tag=DirLoad,rym=1] ~ ~ ~ ~-1 ~
scoreboard players add @e[tag=DirLoad,rxm=0,rx=90] DirAngT 90
tp @e[tag=DirLoad,rxm=-90,rx=-1] ~ ~ ~ ~ ~90
scoreboard players add @e[tag=DirLoad,rxm=64] DirAngT 64
tp @e[tag=DirLoad,rxm=64] ~ ~ ~ ~ ~-64 
scoreboard players add @e[tag=DirLoad,rxm=32] DirAngT 32
tp @e[tag=DirLoad,rxm=32] ~ ~ ~ ~ ~-32
scoreboard players add @e[tag=DirLoad,rxm=16] DirAngT 16
tp @e[tag=DirLoad,rxm=16] ~ ~ ~ ~ ~-16
scoreboard players add @e[tag=DirLoad,rxm=8] DirAngT 8
tp @e[tag=DirLoad,rxm=8] ~ ~ ~ ~ ~-8
scoreboard players add @e[tag=DirLoad,rxm=4] DirAngT 4
tp @e[tag=DirLoad,rxm=4] ~ ~ ~ ~ ~-4
scoreboard players add @e[tag=DirLoad,rxm=2] DirAngT 2
tp @e[tag=DirLoad,rxm=2] ~ ~ ~ ~ ~-2
scoreboard players add @e[tag=DirLoad,rxm=1] DirAngT 1
tp @e[tag=DirLoad,rxm=1] ~ ~ ~ ~ ~-1

#initialization bis

execute @e[tag=DirLoad] ~ ~ ~ /tp @e[tag=DirLoad,c=1] @p[tag=DirShoot]
tp @e[tag=DirLoad] ~ ~1.7 ~
scoreboard players set @e[tag=DirLoad] DirSpeed 200

#calcul vectors

execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP = @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= @e[tag=DirLoad,c=1] DirCosP
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= 4 Constant
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP += 32400 Constant
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= 1000 Constant
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosP = @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosP *= @e[tag=DirLoad,c=1] DirCalcCosP
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosP += 32400 Constant
execute @e[tag=DirLoad,score_DirAngP=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP /= @e[tag=DirLoad,c=1] DirCalcCosP
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcP = @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcP -= 180 Constant
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP = @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= @e[tag=DirLoad,c=1] DirCosP
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= 4 Constant
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP += 32400 Constant
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= 1000 Constant
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosP = @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosP *= @e[tag=DirLoad,c=1] DirCalcCosP
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosP += 32400 Constant
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP /= @e[tag=DirLoad,c=1] DirCalcCosP
execute @e[tag=DirLoad,score_DirAngP=269,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcP = @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcP -= 90 Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP = @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP += 180 Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= 4 Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= 1000 Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP = @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP += 180 Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP += 40500 Constant
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP = @e[tag=DirLoad,c=1] DirSinP
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP /= @e[tag=DirLoad,c=1] DirCalcSinP
execute @e[tag=DirLoad,score_DirAngP=179,score_DirAngP_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcP = @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcP -= 270 Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP = @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP += 180 Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= 4 Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= 1000 Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP = @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP += 180 Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP += 40500 Constant
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP = @e[tag=DirLoad,c=1] DirSinP
execute @e[tag=DirLoad,score_DirAngP_min=270] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosP /= @e[tag=DirLoad,c=1] DirCalcSinP
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCP = @e[tag=DirLoad,c=1] DirCosP
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcP = @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcP -= 180 Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP = @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP += 180 Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= 4 Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= 1000 Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP = @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP += 180 Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= @e[tag=DirLoad,c=1] DirCalcP
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP += 40500 Constant
execute @e[tag=DirLoad,score_DirAngP_min=180] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP /= @e[tag=DirLoad,c=1] DirCalcSinP
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP = @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP += 180 Constant
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= 4 Constant
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= 1000 Constant
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP = @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP += 180 Constant
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= @e[tag=DirLoad,c=1] DirAngP
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP *= Neg Constant
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinP += 40500 Constant
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP /= @e[tag=DirLoad,c=1] DirCalcSinP
execute @e[tag=DirLoad,score_DirAngP=179] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinP *= Neg Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSP = @e[tag=DirLoad,c=1] DirSinP
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcT = @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcT -= 90 Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT = @e[tag=DirLoad,c=1] DirCalcT
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT *= Neg Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT += 180 Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT *= @e[tag=DirLoad,c=1] DirCalcT
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT *= 4 Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT *= 1000 Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT = @e[tag=DirLoad,c=1] DirCalcT
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT *= Neg Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT += 180 Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT *= @e[tag=DirLoad,c=1] DirCalcT
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT *= Neg Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT += 40500 Constant
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT = @e[tag=DirLoad,c=1] DirSinT
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT /= @e[tag=DirLoad,c=1] DirCalcSinT
execute @e[tag=DirLoad,score_DirAngT_min=90] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT *= Neg Constant
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT = @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT *= @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT *= 4 Constant
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT *= Neg Constant
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT += 32400 Constant
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT *= 1000 Constant
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosT = @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosT *= @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcCosT += 32400 Constant
execute @e[tag=DirLoad,score_DirAngT=89] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCosT /= @e[tag=DirLoad,c=1] DirCalcCosT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCT = @e[tag=DirLoad,c=1] DirCosT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT = @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT *= Neg Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT += 180 Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT *= @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT *= 4 Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT *= 1000 Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT = @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT *= Neg Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT += 180 Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT *= @e[tag=DirLoad,c=1] DirAngT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT *= Neg Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirCalcSinT += 40500 Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirSinT /= @e[tag=DirLoad,c=1] DirCalcSinT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirST = @e[tag=DirLoad,c=1] DirSinT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirX = @e[tag=DirLoad,c=1] DirSP
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirX *= @e[tag=DirLoad,c=1] DirST
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirX /= 1000 Constant
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirY = @e[tag=DirLoad,c=1] DirCT
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirZ = @e[tag=DirLoad,c=1] DirCP
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirZ *= @e[tag=DirLoad,c=1] DirST
execute @e[tag=DirLoad] ~ ~ ~ /scoreboard players operation @e[tag=DirLoad,c=1] DirZ /= 1000 Constant

#initialization bis bis

scoreboard players tag @e[tag=DirLoad] add DirMoving
scoreboard players tag @e remove DirLoad
scoreboard players tag @e remove DirHaveShoot
scoreboard players tag @e[tag=DirShoot] add DirHaveShoot
scoreboard players tag @e remove DirShoot