# NAME: GetOriYFromVec1
 
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

scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=0,score_Tmp2=8] Theta 90
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=9,score_Tmp2=25] Theta 89
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=26,score_Tmp2=43] Theta 88
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=44,score_Tmp2=60] Theta 87
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=61,score_Tmp2=77] Theta 86
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=78,score_Tmp2=95] Theta 85
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=96,score_Tmp2=112] Theta 84
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=113,score_Tmp2=129] Theta 83
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=130,score_Tmp2=147] Theta 82
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=148,score_Tmp2=164] Theta 81
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=165,score_Tmp2=181] Theta 80
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=182,score_Tmp2=198] Theta 79
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=199,score_Tmp2=215] Theta 78
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=216,score_Tmp2=232] Theta 77
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=233,score_Tmp2=249] Theta 76
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=250,score_Tmp2=266] Theta 75
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=267,score_Tmp2=283] Theta 74
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=284,score_Tmp2=300] Theta 73
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=301,score_Tmp2=316] Theta 72
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=317,score_Tmp2=333] Theta 71
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=334,score_Tmp2=349] Theta 70
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=350,score_Tmp2=365] Theta 69
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=366,score_Tmp2=382] Theta 68
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=383,score_Tmp2=398] Theta 67
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=399,score_Tmp2=414] Theta 66
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=415,score_Tmp2=429] Theta 65
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=430,score_Tmp2=445] Theta 64
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=446,score_Tmp2=461] Theta 63
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=462,score_Tmp2=476] Theta 62
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=477,score_Tmp2=491] Theta 61
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=492,score_Tmp2=506] Theta 60
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=507,score_Tmp2=521] Theta 59
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=522,score_Tmp2=536] Theta 58
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=537,score_Tmp2=551] Theta 57
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=552,score_Tmp2=565] Theta 56
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=566,score_Tmp2=580] Theta 55
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=581,score_Tmp2=594] Theta 54
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=595,score_Tmp2=608] Theta 53
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=609,score_Tmp2=621] Theta 52
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=622,score_Tmp2=635] Theta 51
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=636,score_Tmp2=648] Theta 50
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=649,score_Tmp2=662] Theta 49
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=663,score_Tmp2=675] Theta 48
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=676,score_Tmp2=687] Theta 47
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=688,score_Tmp2=700] Theta 46
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=701,score_Tmp2=712] Theta 45
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=713,score_Tmp2=724] Theta 44
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=725,score_Tmp2=736] Theta 43
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=737,score_Tmp2=748] Theta 42
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=749,score_Tmp2=759] Theta 41
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=760,score_Tmp2=771] Theta 40
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=772,score_Tmp2=782] Theta 39
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=783,score_Tmp2=792] Theta 38
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=793,score_Tmp2=803] Theta 37
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=804,score_Tmp2=813] Theta 36
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=814,score_Tmp2=823] Theta 35
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=824,score_Tmp2=833] Theta 34
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=834,score_Tmp2=842] Theta 33
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=843,score_Tmp2=852] Theta 32
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=853,score_Tmp2=861] Theta 31
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=862,score_Tmp2=869] Theta 30
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=870,score_Tmp2=878] Theta 29
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=879,score_Tmp2=886] Theta 28
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=887,score_Tmp2=894] Theta 27
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=895,score_Tmp2=902] Theta 26
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=903,score_Tmp2=909] Theta 25
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=910,score_Tmp2=916] Theta 24
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=917,score_Tmp2=923] Theta 23
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=924,score_Tmp2=929] Theta 22
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=930,score_Tmp2=936] Theta 21
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=937,score_Tmp2=942] Theta 20
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=943,score_Tmp2=947] Theta 19
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=948,score_Tmp2=953] Theta 18
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=954,score_Tmp2=958] Theta 17
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=959,score_Tmp2=963] Theta 16
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=964,score_Tmp2=967] Theta 15
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=968,score_Tmp2=971] Theta 14
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=972,score_Tmp2=975] Theta 13
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=976,score_Tmp2=979] Theta 12
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=980,score_Tmp2=982] Theta 11
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=983,score_Tmp2=985] Theta 10
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=986,score_Tmp2=988] Theta 9
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=989,score_Tmp2=990] Theta 8
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=991,score_Tmp2=993] Theta 7
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=994,score_Tmp2=994] Theta 6
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=995,score_Tmp2=996] Theta 5
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=997,score_Tmp2=997] Theta 4
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=998,score_Tmp2=998] Theta 3
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=999,score_Tmp2=999] Theta 2
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=1000,score_Tmp2=1000] Theta 0

scoreboard players set @e[tag=GetOriYFromVec,score_VectorY=-1] Tmp2 180
execute @e[tag=GetOriYFromVec,score_VectorY=-1] ~ ~ ~ scoreboard players operation @s Tmp2 -= @s Theta
execute @e[tag=GetOriYFromVec,score_VectorY=-1] ~ ~ ~ scoreboard players operation @s Theta = @s Tmp2


