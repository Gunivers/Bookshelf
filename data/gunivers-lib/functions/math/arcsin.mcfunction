# NAME: Arcsin
# PATH: gunivers-lib:math/arcsin
 
# AUTHOR: Luludatra
# CONTRIBUTORS:
# - KubbyDev
 
# VERSION: 0.1 
# MINECRAFT: 1.13.X 

# INPUT: 
# - Var1 (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - This function returns asin(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Res dummy

# CODE: 

scoreboard players operation @s Var2 = @s Var1
scoreboard players operation @s[scores={Var2=..-1}] Var2 *= -1 Constant

scoreboard players set @s[scores={Var2=0..8}] Res 0
scoreboard players set @s[scores={Var2=8..26}] Res 1
scoreboard players set @s[scores={Var2=26..43}] Res 2
scoreboard players set @s[scores={Var2=43..61}] Res 3
scoreboard players set @s[scores={Var2=61..78}] Res 4
scoreboard players set @s[scores={Var2=78..95}] Res 5
scoreboard players set @s[scores={Var2=95..113}] Res 6
scoreboard players set @s[scores={Var2=113..130}] Res 7
scoreboard players set @s[scores={Var2=130..156}] Res 8
scoreboard players set @s[scores={Var2=156..182}] Res 9
scoreboard players set @s[scores={Var2=182..199}] Res 10
scoreboard players set @s[scores={Var2=199..216}] Res 11
scoreboard players set @s[scores={Var2=216..233}] Res 12
scoreboard players set @s[scores={Var2=233..250}] Res 13
scoreboard players set @s[scores={Var2=250..267}] Res 14
scoreboard players set @s[scores={Var2=267..284}] Res 15
scoreboard players set @s[scores={Var2=284..300}] Res 16
scoreboard players set @s[scores={Var2=300..317}] Res 17
scoreboard players set @s[scores={Var2=317..333}] Res 18
scoreboard players set @s[scores={Var2=333..350}] Res 19
scoreboard players set @s[scores={Var2=350..366}] Res 20
scoreboard players set @s[scores={Var2=366..382}] Res 21
scoreboard players set @s[scores={Var2=382..398}] Res 22
scoreboard players set @s[scores={Var2=398..414}] Res 23
scoreboard players set @s[scores={Var2=414..430}] Res 24
scoreboard players set @s[scores={Var2=430..446}] Res 25
scoreboard players set @s[scores={Var2=446..461}] Res 26
scoreboard players set @s[scores={Var2=461..477}] Res 27
scoreboard players set @s[scores={Var2=477..492}] Res 28
scoreboard players set @s[scores={Var2=492..507}] Res 29
scoreboard players set @s[scores={Var2=507..522}] Res 30
scoreboard players set @s[scores={Var2=522..537}] Res 31
scoreboard players set @s[scores={Var2=537..551}] Res 32
scoreboard players set @s[scores={Var2=552..566}] Res 33
scoreboard players set @s[scores={Var2=566..580}] Res 34
scoreboard players set @s[scores={Var2=580..594}] Res 35
scoreboard players set @s[scores={Var2=594..608}] Res 36
scoreboard players set @s[scores={Var2=608..622}] Res 37
scoreboard players set @s[scores={Var2=622..636}] Res 38
scoreboard players set @s[scores={Var2=636..649}] Res 39
scoreboard players set @s[scores={Var2=649..662}] Res 40
scoreboard players set @s[scores={Var2=662..675}] Res 41
scoreboard players set @s[scores={Var2=675..688}] Res 42
scoreboard players set @s[scores={Var2=688..700}] Res 43
scoreboard players set @s[scores={Var2=701..713}] Res 44
scoreboard players set @s[scores={Var2=713..725}] Res 45
scoreboard players set @s[scores={Var2=725..737}] Res 46
scoreboard players set @s[scores={Var2=737..748}] Res 47
scoreboard players set @s[scores={Var2=749..760}] Res 48
scoreboard players set @s[scores={Var2=760..771}] Res 49
scoreboard players set @s[scores={Var2=771..782}] Res 50
scoreboard players set @s[scores={Var2=782..793}] Res 51
scoreboard players set @s[scores={Var2=793..803}] Res 52
scoreboard players set @s[scores={Var2=803..814}] Res 53
scoreboard players set @s[scores={Var2=814..824}] Res 54
scoreboard players set @s[scores={Var2=824..833}] Res 55
scoreboard players set @s[scores={Var2=833..843}] Res 56
scoreboard players set @s[scores={Var2=843..852}] Res 57
scoreboard players set @s[scores={Var2=852..861}] Res 58
scoreboard players set @s[scores={Var2=861..870}] Res 59
scoreboard players set @s[scores={Var2=870..878}] Res 60
scoreboard players set @s[scores={Var2=878..887}] Res 61
scoreboard players set @s[scores={Var2=887..894}] Res 62
scoreboard players set @s[scores={Var2=895..902}] Res 63
scoreboard players set @s[scores={Var2=902..909}] Res 64
scoreboard players set @s[scores={Var2=910..917}] Res 65
scoreboard players set @s[scores={Var2=917..923}] Res 66
scoreboard players set @s[scores={Var2=923..930}] Res 67
scoreboard players set @s[scores={Var2=930..936}] Res 68
scoreboard players set @s[scores={Var2=936..942}] Res 69
scoreboard players set @s[scores={Var2=942..948}] Res 70
scoreboard players set @s[scores={Var2=948..953}] Res 71
scoreboard players set @s[scores={Var2=953..958}] Res 72
scoreboard players set @s[scores={Var2=958..963}] Res 73
scoreboard players set @s[scores={Var2=963..968}] Res 74
scoreboard players set @s[scores={Var2=968..972}] Res 75
scoreboard players set @s[scores={Var2=972..976}] Res 76
scoreboard players set @s[scores={Var2=976..979}] Res 77
scoreboard players set @s[scores={Var2=980..983}] Res 78
scoreboard players set @s[scores={Var2=983..986}] Res 79
scoreboard players set @s[scores={Var2=986..988}] Res 81
scoreboard players set @s[scores={Var2=989..991}] Res 82
scoreboard players set @s[scores={Var2=991..993}] Res 83
scoreboard players set @s[scores={Var2=993..995}] Res 84
scoreboard players set @s[scores={Var2=995..996}] Res 85
scoreboard players set @s[scores={Var2=996..998}] Res 86
scoreboard players set @s[scores={Var2=998..999}] Res 87
scoreboard players set @s[scores={Var2=999}] Res 88
scoreboard players set @s[scores={Var2=999}] Res 89
scoreboard players set @s[scores={Var2=999..1000}] Res 90

scoreboard players operation @s[scores={Var1=..-1}] Res *= -1 Constant












