# NAME: Arccos
# PATH: gunivers-lib:math/arccos
 
# AUTHOR: KubbyDev 
 
# VERSION: 0.1 
# MINECRAFT: 1.13.X 

# INPUT: 
# - Var1 (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - This function returns acos(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Res dummy


# CODE: 

scoreboard players operation @s Var2 = @s Var1
scoreboard players operation @s[scores={Var2=..-1}] Var2 *= -1 Constant

scoreboard players set @s[scores={Var2=0..8}] Res 90
scoreboard players set @s[scores={Var2=9..25}] Res 89
scoreboard players set @s[scores={Var2=26..43}] Res 88
scoreboard players set @s[scores={Var2=44..60}] Res 87
scoreboard players set @s[scores={Var2=61..77}] Res 86
scoreboard players set @s[scores={Var2=78..95}] Res 85
scoreboard players set @s[scores={Var2=96..112}] Res 84
scoreboard players set @s[scores={Var2=113..129}] Res 83
scoreboard players set @s[scores={Var2=130..147}] Res 82
scoreboard players set @s[scores={Var2=148..164}] Res 81
scoreboard players set @s[scores={Var2=165..181}] Res 80
scoreboard players set @s[scores={Var2=182..198}] Res 79
scoreboard players set @s[scores={Var2=199..215}] Res 78
scoreboard players set @s[scores={Var2=216..232}] Res 77
scoreboard players set @s[scores={Var2=233..249}] Res 76
scoreboard players set @s[scores={Var2=250..266}] Res 75
scoreboard players set @s[scores={Var2=267..283}] Res 74
scoreboard players set @s[scores={Var2=284..300}] Res 73
scoreboard players set @s[scores={Var2=301..316}] Res 72
scoreboard players set @s[scores={Var2=317..333}] Res 71
scoreboard players set @s[scores={Var2=334..349}] Res 70
scoreboard players set @s[scores={Var2=350..365}] Res 69
scoreboard players set @s[scores={Var2=366..382}] Res 68
scoreboard players set @s[scores={Var2=383..398}] Res 67
scoreboard players set @s[scores={Var2=399..414}] Res 66
scoreboard players set @s[scores={Var2=415..429}] Res 65
scoreboard players set @s[scores={Var2=430..445}] Res 64
scoreboard players set @s[scores={Var2=446..461}] Res 63
scoreboard players set @s[scores={Var2=462..476}] Res 62
scoreboard players set @s[scores={Var2=477..491}] Res 61
scoreboard players set @s[scores={Var2=492..506}] Res 60
scoreboard players set @s[scores={Var2=507..521}] Res 59
scoreboard players set @s[scores={Var2=522..536}] Res 58
scoreboard players set @s[scores={Var2=537..551}] Res 57
scoreboard players set @s[scores={Var2=552..565}] Res 56
scoreboard players set @s[scores={Var2=566..580}] Res 55
scoreboard players set @s[scores={Var2=581..594}] Res 54
scoreboard players set @s[scores={Var2=595..608}] Res 53
scoreboard players set @s[scores={Var2=609..621}] Res 52
scoreboard players set @s[scores={Var2=622..635}] Res 51
scoreboard players set @s[scores={Var2=636..648}] Res 50
scoreboard players set @s[scores={Var2=649..662}] Res 49
scoreboard players set @s[scores={Var2=663..675}] Res 48
scoreboard players set @s[scores={Var2=676..687}] Res 47
scoreboard players set @s[scores={Var2=688..700}] Res 46
scoreboard players set @s[scores={Var2=701..712}] Res 45
scoreboard players set @s[scores={Var2=713..724}] Res 44
scoreboard players set @s[scores={Var2=725..736}] Res 43
scoreboard players set @s[scores={Var2=737..748}] Res 42
scoreboard players set @s[scores={Var2=749..759}] Res 41
scoreboard players set @s[scores={Var2=760..771}] Res 40
scoreboard players set @s[scores={Var2=772..782}] Res 39
scoreboard players set @s[scores={Var2=783..792}] Res 38
scoreboard players set @s[scores={Var2=793..803}] Res 37
scoreboard players set @s[scores={Var2=804..813}] Res 36
scoreboard players set @s[scores={Var2=814..823}] Res 35
scoreboard players set @s[scores={Var2=824..833}] Res 34
scoreboard players set @s[scores={Var2=834..842}] Res 33
scoreboard players set @s[scores={Var2=843..852}] Res 32
scoreboard players set @s[scores={Var2=853..861}] Res 31
scoreboard players set @s[scores={Var2=862..869}] Res 30
scoreboard players set @s[scores={Var2=870..878}] Res 29
scoreboard players set @s[scores={Var2=879..886}] Res 28
scoreboard players set @s[scores={Var2=887..894}] Res 27
scoreboard players set @s[scores={Var2=895..902}] Res 26
scoreboard players set @s[scores={Var2=903..909}] Res 25
scoreboard players set @s[scores={Var2=910..916}] Res 24
scoreboard players set @s[scores={Var2=917..923}] Res 23
scoreboard players set @s[scores={Var2=924..929}] Res 22
scoreboard players set @s[scores={Var2=930..936}] Res 21
scoreboard players set @s[scores={Var2=937..942}] Res 20
scoreboard players set @s[scores={Var2=943..947}] Res 19
scoreboard players set @s[scores={Var2=948..953}] Res 18
scoreboard players set @s[scores={Var2=954..958}] Res 17
scoreboard players set @s[scores={Var2=959..963}] Res 16
scoreboard players set @s[scores={Var2=964..967}] Res 15
scoreboard players set @s[scores={Var2=968..971}] Res 14
scoreboard players set @s[scores={Var2=972..975}] Res 13
scoreboard players set @s[scores={Var2=976..979}] Res 12
scoreboard players set @s[scores={Var2=980..982}] Res 11
scoreboard players set @s[scores={Var2=983..985}] Res 10
scoreboard players set @s[scores={Var2=986..988}] Res 9
scoreboard players set @s[scores={Var2=989..990}] Res 8
scoreboard players set @s[scores={Var2=991..993}] Res 7
scoreboard players set @s[scores={Var2=994}] Res 6
scoreboard players set @s[scores={Var2=995..996}] Res 5
scoreboard players set @s[scores={Var2=997}] Res 4
scoreboard players set @s[scores={Var2=998}] Res 3
scoreboard players set @s[scores={Var2=999}] Res 2
scoreboard players set @s[scores={Var2=1000}] Res 0

scoreboard players set @s[scores={Var1=..-1}] Var2 180
scoreboard players operation @s[scores={Var1=..-1}] Var2 -= @s Res
scoreboard players operation @s[scores={Var1=..-1}] Res = @s Var2
