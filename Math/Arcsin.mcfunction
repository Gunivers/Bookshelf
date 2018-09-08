# NAME: Arcsin
# PATH: Gunivers-Lib:Math/Arcsin
 
# AUTHOR: Luludatra
 
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
# - This function returns asin(x) in degrees, but x must be in interval [-1000;1000] instead of [-1;1]

 
# CODE: 
#____________________________________________________________________________________________________


scoreboard players operation @s Tmp2 = @s Tmp1
scoreboard players operation @s[score_Tmp2=-1] Tmp2 *= -1 Constant

scoreboard players set @s[score_Tmp2_min=0,score_Tmp2=8] Res 0
scoreboard players set @s[score_Tmp2_min=8,score_Tmp2=26] Res 1
scoreboard players set @s[score_Tmp2_min=26,score_Tmp2=43] Res 2
scoreboard players set @s[score_Tmp2_min=43,score_Tmp2=61] Res 3
scoreboard players set @s[score_Tmp2_min=61,score_Tmp2=78] Res 4
scoreboard players set @s[score_Tmp2_min=78,score_Tmp2=95] Res 5
scoreboard players set @s[score_Tmp2_min=95,score_Tmp2=113] Res 6
scoreboard players set @s[score_Tmp2_min=113,score_Tmp2=130] Res 7
scoreboard players set @s[score_Tmp2_min=130,score_Tmp2=156] Res 8
scoreboard players set @s[score_Tmp2_min=156,score_Tmp2=182] Res 9
scoreboard players set @s[score_Tmp2_min=182,score_Tmp2=199] Res 10
scoreboard players set @s[score_Tmp2_min=199,score_Tmp2=216] Res 11
scoreboard players set @s[score_Tmp2_min=216,score_Tmp2=233] Res 12
scoreboard players set @s[score_Tmp2_min=233,score_Tmp2=250] Res 13
scoreboard players set @s[score_Tmp2_min=250,score_Tmp2=267] Res 14
scoreboard players set @s[score_Tmp2_min=267,score_Tmp2=284] Res 15
scoreboard players set @s[score_Tmp2_min=284,score_Tmp2=300] Res 16
scoreboard players set @s[score_Tmp2_min=300,score_Tmp2=317] Res 17
scoreboard players set @s[score_Tmp2_min=317,score_Tmp2=333] Res 18
scoreboard players set @s[score_Tmp2_min=333,score_Tmp2=350] Res 19
scoreboard players set @s[score_Tmp2_min=350,score_Tmp2=366] Res 20
scoreboard players set @s[score_Tmp2_min=366,score_Tmp2=382] Res 21
scoreboard players set @s[score_Tmp2_min=382,score_Tmp2=398] Res 22
scoreboard players set @s[score_Tmp2_min=398,score_Tmp2=414] Res 23
scoreboard players set @s[score_Tmp2_min=414,score_Tmp2=430] Res 24
scoreboard players set @s[score_Tmp2_min=430,score_Tmp2=446] Res 25
scoreboard players set @s[score_Tmp2_min=446,score_Tmp2=461] Res 26
scoreboard players set @s[score_Tmp2_min=461,score_Tmp2=477] Res 27
scoreboard players set @s[score_Tmp2_min=477,score_Tmp2=492] Res 28
scoreboard players set @s[score_Tmp2_min=492,score_Tmp2=507] Res 29
scoreboard players set @s[score_Tmp2_min=507,score_Tmp2=522] Res 30
scoreboard players set @s[score_Tmp2_min=522,score_Tmp2=537] Res 31
scoreboard players set @s[score_Tmp2_min=537,score_Tmp2=551] Res 32
scoreboard players set @s[score_Tmp2_min=552,score_Tmp2=566] Res 33
scoreboard players set @s[score_Tmp2_min=566,score_Tmp2=580] Res 34
scoreboard players set @s[score_Tmp2_min=580,score_Tmp2=594] Res 35
scoreboard players set @s[score_Tmp2_min=594,score_Tmp2=608] Res 36
scoreboard players set @s[score_Tmp2_min=608,score_Tmp2=622] Res 37
scoreboard players set @s[score_Tmp2_min=622,score_Tmp2=636] Res 38
scoreboard players set @s[score_Tmp2_min=636,score_Tmp2=649] Res 39
scoreboard players set @s[score_Tmp2_min=649,score_Tmp2=662] Res 40
scoreboard players set @s[score_Tmp2_min=662,score_Tmp2=675] Res 41
scoreboard players set @s[score_Tmp2_min=675,score_Tmp2=688] Res 42
scoreboard players set @s[score_Tmp2_min=688,score_Tmp2=700] Res 43
scoreboard players set @s[score_Tmp2_min=701,score_Tmp2=713] Res 44
scoreboard players set @s[score_Tmp2_min=713,score_Tmp2=725] Res 45
scoreboard players set @s[score_Tmp2_min=725,score_Tmp2=737] Res 46
scoreboard players set @s[score_Tmp2_min=737,score_Tmp2=748] Res 47
scoreboard players set @s[score_Tmp2_min=749,score_Tmp2=760] Res 48
scoreboard players set @s[score_Tmp2_min=760,score_Tmp2=771] Res 49
scoreboard players set @s[score_Tmp2_min=771,score_Tmp2=782] Res 50
scoreboard players set @s[score_Tmp2_min=782,score_Tmp2=793] Res 51
scoreboard players set @s[score_Tmp2_min=793,score_Tmp2=803] Res 52
scoreboard players set @s[score_Tmp2_min=803,score_Tmp2=814] Res 53
scoreboard players set @s[score_Tmp2_min=814,score_Tmp2=824] Res 54
scoreboard players set @s[score_Tmp2_min=824,score_Tmp2=833] Res 55
scoreboard players set @s[score_Tmp2_min=833,score_Tmp2=843] Res 56
scoreboard players set @s[score_Tmp2_min=843,score_Tmp2=852] Res 57
scoreboard players set @s[score_Tmp2_min=852,score_Tmp2=861] Res 58
scoreboard players set @s[score_Tmp2_min=861,score_Tmp2=870] Res 59
scoreboard players set @s[score_Tmp2_min=870,score_Tmp2=878] Res 60
scoreboard players set @s[score_Tmp2_min=878,score_Tmp2=887] Res 61
scoreboard players set @s[score_Tmp2_min=887,score_Tmp2=894] Res 62
scoreboard players set @s[score_Tmp2_min=895,score_Tmp2=902] Res 63
scoreboard players set @s[score_Tmp2_min=902,score_Tmp2=909] Res 64
scoreboard players set @s[score_Tmp2_min=910,score_Tmp2=917] Res 65
scoreboard players set @s[score_Tmp2_min=917,score_Tmp2=923] Res 66
scoreboard players set @s[score_Tmp2_min=923,score_Tmp2=930] Res 67
scoreboard players set @s[score_Tmp2_min=930,score_Tmp2=936] Res 68
scoreboard players set @s[score_Tmp2_min=936,score_Tmp2=942] Res 69
scoreboard players set @s[score_Tmp2_min=942,score_Tmp2=948] Res 70
scoreboard players set @s[score_Tmp2_min=948,score_Tmp2=953] Res 71
scoreboard players set @s[score_Tmp2_min=953,score_Tmp2=958] Res 72
scoreboard players set @s[score_Tmp2_min=958,score_Tmp2=963] Res 73
scoreboard players set @s[score_Tmp2_min=963,score_Tmp2=968] Res 74
scoreboard players set @s[score_Tmp2_min=968,score_Tmp2=972] Res 75
scoreboard players set @s[score_Tmp2_min=972,score_Tmp2=976] Res 76
scoreboard players set @s[score_Tmp2_min=976,score_Tmp2=979] Res 77
scoreboard players set @s[score_Tmp2_min=980,score_Tmp2=983] Res 78
scoreboard players set @s[score_Tmp2_min=983,score_Tmp2=986] Res 79
scoreboard players set @s[score_Tmp2_min=986,score_Tmp2=988] Res 81
scoreboard players set @s[score_Tmp2_min=989,score_Tmp2=991] Res 82
scoreboard players set @s[score_Tmp2_min=991,score_Tmp2=993] Res 83
scoreboard players set @s[score_Tmp2_min=993,score_Tmp2=995] Res 84
scoreboard players set @s[score_Tmp2_min=995,score_Tmp2=996] Res 85
scoreboard players set @s[score_Tmp2_min=996,score_Tmp2=998] Res 86
scoreboard players set @s[score_Tmp2_min=998,score_Tmp2=999] Res 87
scoreboard players set @s[score_Tmp2_min=999,score_Tmp2=999] Res 88
scoreboard players set @s[score_Tmp2_min=999,score_Tmp2=999] Res 89
scoreboard players set @s[score_Tmp2_min=999,score_Tmp2=1000] Res 90

scoreboard players set @s[score_Tmp1=-1] Tmp2 180
scoreboard players operation @s[score_Tmp1=-1] Tmp2 -= @s Res
scoreboard players operation @s[score_Tmp1=-1] Res = @s Tmp2












