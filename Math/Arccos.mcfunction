# NAME: Arccos
# PATH: Gunivers-Lib:Math/Arccos
 
# AUTHOR: KubbyDev 
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIREMENTS: 
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file) 
 
# INPUT: 
# - Tmp1 (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - This function returns acos(x) in degrees, but x must be in interval [-1000;1000] instead of [-1;1]
 
 
# CODE: 
#____________________________________________________________________________________________________


scoreboard players operation @s Tmp2 = @s Tmp1
scoreboard players operation @s[score_Tmp2=-1] Tmp2 *= -1 Constant

scoreboard players set @s[score_Tmp2_min=0,score_Tmp2=8] Res 90
scoreboard players set @s[score_Tmp2_min=9,score_Tmp2=25] Res 89
scoreboard players set @s[score_Tmp2_min=26,score_Tmp2=43] Res 88
scoreboard players set @s[score_Tmp2_min=44,score_Tmp2=60] Res 87
scoreboard players set @s[score_Tmp2_min=61,score_Tmp2=77] Res 86
scoreboard players set @s[score_Tmp2_min=78,score_Tmp2=95] Res 85
scoreboard players set @s[score_Tmp2_min=96,score_Tmp2=112] Res 84
scoreboard players set @s[score_Tmp2_min=113,score_Tmp2=129] Res 83
scoreboard players set @s[score_Tmp2_min=130,score_Tmp2=147] Res 82
scoreboard players set @s[score_Tmp2_min=148,score_Tmp2=164] Res 81
scoreboard players set @s[score_Tmp2_min=165,score_Tmp2=181] Res 80
scoreboard players set @s[score_Tmp2_min=182,score_Tmp2=198] Res 79
scoreboard players set @s[score_Tmp2_min=199,score_Tmp2=215] Res 78
scoreboard players set @s[score_Tmp2_min=216,score_Tmp2=232] Res 77
scoreboard players set @s[score_Tmp2_min=233,score_Tmp2=249] Res 76
scoreboard players set @s[score_Tmp2_min=250,score_Tmp2=266] Res 75
scoreboard players set @s[score_Tmp2_min=267,score_Tmp2=283] Res 74
scoreboard players set @s[score_Tmp2_min=284,score_Tmp2=300] Res 73
scoreboard players set @s[score_Tmp2_min=301,score_Tmp2=316] Res 72
scoreboard players set @s[score_Tmp2_min=317,score_Tmp2=333] Res 71
scoreboard players set @s[score_Tmp2_min=334,score_Tmp2=349] Res 70
scoreboard players set @s[score_Tmp2_min=350,score_Tmp2=365] Res 69
scoreboard players set @s[score_Tmp2_min=366,score_Tmp2=382] Res 68
scoreboard players set @s[score_Tmp2_min=383,score_Tmp2=398] Res 67
scoreboard players set @s[score_Tmp2_min=399,score_Tmp2=414] Res 66
scoreboard players set @s[score_Tmp2_min=415,score_Tmp2=429] Res 65
scoreboard players set @s[score_Tmp2_min=430,score_Tmp2=445] Res 64
scoreboard players set @s[score_Tmp2_min=446,score_Tmp2=461] Res 63
scoreboard players set @s[score_Tmp2_min=462,score_Tmp2=476] Res 62
scoreboard players set @s[score_Tmp2_min=477,score_Tmp2=491] Res 61
scoreboard players set @s[score_Tmp2_min=492,score_Tmp2=506] Res 60
scoreboard players set @s[score_Tmp2_min=507,score_Tmp2=521] Res 59
scoreboard players set @s[score_Tmp2_min=522,score_Tmp2=536] Res 58
scoreboard players set @s[score_Tmp2_min=537,score_Tmp2=551] Res 57
scoreboard players set @s[score_Tmp2_min=552,score_Tmp2=565] Res 56
scoreboard players set @s[score_Tmp2_min=566,score_Tmp2=580] Res 55
scoreboard players set @s[score_Tmp2_min=581,score_Tmp2=594] Res 54
scoreboard players set @s[score_Tmp2_min=595,score_Tmp2=608] Res 53
scoreboard players set @s[score_Tmp2_min=609,score_Tmp2=621] Res 52
scoreboard players set @s[score_Tmp2_min=622,score_Tmp2=635] Res 51
scoreboard players set @s[score_Tmp2_min=636,score_Tmp2=648] Res 50
scoreboard players set @s[score_Tmp2_min=649,score_Tmp2=662] Res 49
scoreboard players set @s[score_Tmp2_min=663,score_Tmp2=675] Res 48
scoreboard players set @s[score_Tmp2_min=676,score_Tmp2=687] Res 47
scoreboard players set @s[score_Tmp2_min=688,score_Tmp2=700] Res 46
scoreboard players set @s[score_Tmp2_min=701,score_Tmp2=712] Res 45
scoreboard players set @s[score_Tmp2_min=713,score_Tmp2=724] Res 44
scoreboard players set @s[score_Tmp2_min=725,score_Tmp2=736] Res 43
scoreboard players set @s[score_Tmp2_min=737,score_Tmp2=748] Res 42
scoreboard players set @s[score_Tmp2_min=749,score_Tmp2=759] Res 41
scoreboard players set @s[score_Tmp2_min=760,score_Tmp2=771] Res 40
scoreboard players set @s[score_Tmp2_min=772,score_Tmp2=782] Res 39
scoreboard players set @s[score_Tmp2_min=783,score_Tmp2=792] Res 38
scoreboard players set @s[score_Tmp2_min=793,score_Tmp2=803] Res 37
scoreboard players set @s[score_Tmp2_min=804,score_Tmp2=813] Res 36
scoreboard players set @s[score_Tmp2_min=814,score_Tmp2=823] Res 35
scoreboard players set @s[score_Tmp2_min=824,score_Tmp2=833] Res 34
scoreboard players set @s[score_Tmp2_min=834,score_Tmp2=842] Res 33
scoreboard players set @s[score_Tmp2_min=843,score_Tmp2=852] Res 32
scoreboard players set @s[score_Tmp2_min=853,score_Tmp2=861] Res 31
scoreboard players set @s[score_Tmp2_min=862,score_Tmp2=869] Res 30
scoreboard players set @s[score_Tmp2_min=870,score_Tmp2=878] Res 29
scoreboard players set @s[score_Tmp2_min=879,score_Tmp2=886] Res 28
scoreboard players set @s[score_Tmp2_min=887,score_Tmp2=894] Res 27
scoreboard players set @s[score_Tmp2_min=895,score_Tmp2=902] Res 26
scoreboard players set @s[score_Tmp2_min=903,score_Tmp2=909] Res 25
scoreboard players set @s[score_Tmp2_min=910,score_Tmp2=916] Res 24
scoreboard players set @s[score_Tmp2_min=917,score_Tmp2=923] Res 23
scoreboard players set @s[score_Tmp2_min=924,score_Tmp2=929] Res 22
scoreboard players set @s[score_Tmp2_min=930,score_Tmp2=936] Res 21
scoreboard players set @s[score_Tmp2_min=937,score_Tmp2=942] Res 20
scoreboard players set @s[score_Tmp2_min=943,score_Tmp2=947] Res 19
scoreboard players set @s[score_Tmp2_min=948,score_Tmp2=953] Res 18
scoreboard players set @s[score_Tmp2_min=954,score_Tmp2=958] Res 17
scoreboard players set @s[score_Tmp2_min=959,score_Tmp2=963] Res 16
scoreboard players set @s[score_Tmp2_min=964,score_Tmp2=967] Res 15
scoreboard players set @s[score_Tmp2_min=968,score_Tmp2=971] Res 14
scoreboard players set @s[score_Tmp2_min=972,score_Tmp2=975] Res 13
scoreboard players set @s[score_Tmp2_min=976,score_Tmp2=979] Res 12
scoreboard players set @s[score_Tmp2_min=980,score_Tmp2=982] Res 11
scoreboard players set @s[score_Tmp2_min=983,score_Tmp2=985] Res 10
scoreboard players set @s[score_Tmp2_min=986,score_Tmp2=988] Res 9
scoreboard players set @s[score_Tmp2_min=989,score_Tmp2=990] Res 8
scoreboard players set @s[score_Tmp2_min=991,score_Tmp2=993] Res 7
scoreboard players set @s[score_Tmp2_min=994,score_Tmp2=994] Res 6
scoreboard players set @s[score_Tmp2_min=995,score_Tmp2=996] Res 5
scoreboard players set @s[score_Tmp2_min=997,score_Tmp2=997] Res 4
scoreboard players set @s[score_Tmp2_min=998,score_Tmp2=998] Res 3
scoreboard players set @s[score_Tmp2_min=999,score_Tmp2=999] Res 2
scoreboard players set @s[score_Tmp2_min=1000,score_Tmp2=1000] Res 0

scoreboard players set @s[score_Tmp1=-1] Tmp2 180
scoreboard players operation @s[score_Tmp1=-1] Tmp2 -= @s Res
scoreboard players operation @s[score_Tmp1=-1] Res = @s Tmp2