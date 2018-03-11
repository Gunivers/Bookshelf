# NAME: GetOriYFromVec2
 
# AUTHOR: KubbyDev 
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - VectorY (score dummy) 
# - Tmp2 (score dummy)  
# - Theta (score dummy) 
 
# INPUT: 
# - VectorY (score dummy)
 
# OUTPUT: 
# - Theta (score dummy) 
 
# NOTE:  
# - This function returns acos(x) in degrees, but x must be in interval [-1000;1000] instead of [-1;1]
 
# CONFIGURATION: <none> 
 
# CODE: 

execute @e[tag=GetOriYFromVec] ~ ~ ~ scoreboard players operation @s Tmp2 = @s VectorY
scoreboard players operation @e[tag=GetOriYFromVec,score_Tmp2=-1] Tmp2 *= -1 Constant

scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=0,score_Tmp2=16] Theta 90
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=17,score_Tmp2=51] Theta 88
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=52,score_Tmp2=86] Theta 86
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=87,score_Tmp2=121] Theta 84
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=122,score_Tmp2=155] Theta 82
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=156,score_Tmp2=190] Theta 80
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=191,score_Tmp2=224] Theta 78
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=225,score_Tmp2=258] Theta 76
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=259,score_Tmp2=291] Theta 74
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=292,score_Tmp2=324] Theta 72
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=325,score_Tmp2=357] Theta 70
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=358,score_Tmp2=390] Theta 68
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=391,score_Tmp2=422] Theta 66
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=423,score_Tmp2=453] Theta 64
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=454,score_Tmp2=484] Theta 62
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=485,score_Tmp2=514] Theta 60
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=515,score_Tmp2=544] Theta 58
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=545,score_Tmp2=572] Theta 56
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=573,score_Tmp2=601] Theta 54
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=602,score_Tmp2=628] Theta 52
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=629,score_Tmp2=655] Theta 50
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=656,score_Tmp2=681] Theta 48
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=682,score_Tmp2=706] Theta 46
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=707,score_Tmp2=730] Theta 44
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=731,score_Tmp2=754] Theta 42
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=755,score_Tmp2=776] Theta 40
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=777,score_Tmp2=798] Theta 38
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=799,score_Tmp2=818] Theta 36
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=819,score_Tmp2=838] Theta 34
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=839,score_Tmp2=856] Theta 32
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=857,score_Tmp2=873] Theta 30
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=874,score_Tmp2=890] Theta 28
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=891,score_Tmp2=905] Theta 26
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=906,score_Tmp2=919] Theta 24
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=920,score_Tmp2=932] Theta 22
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=933,score_Tmp2=944] Theta 20
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=945,score_Tmp2=955] Theta 18
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=956,score_Tmp2=965] Theta 16
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=966,score_Tmp2=973] Theta 14
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=974,score_Tmp2=980] Theta 12
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=981,score_Tmp2=987] Theta 10
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=988,score_Tmp2=991] Theta 8
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=992,score_Tmp2=995] Theta 6
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=996,score_Tmp2=997] Theta 4
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=998,score_Tmp2=999] Theta 2
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=1000,score_Tmp2=1000] Theta 0


scoreboard players set @e[tag=GetOriYFromVec,score_VectorY=-1] Tmp2 180
execute @e[tag=GetOriYFromVec,score_VectorY=-1] ~ ~ ~ scoreboard players operation @s Tmp2 -= @s Theta
execute @e[tag=GetOriYFromVec,score_VectorY=-1] ~ ~ ~ scoreboard players operation @s Theta = @s Tmp2


