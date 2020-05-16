#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/arscos
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - This function returns acos(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s Var2 = @s Var1
scoreboard players operation @s[scores={Var2=..-1}] Var2 *= -1 Constant

scoreboard players set @s[scores={Var2=0..8}] Res1 90
scoreboard players set @s[scores={Var2=9..25}] Res1 89
scoreboard players set @s[scores={Var2=26..43}] Res1 88
scoreboard players set @s[scores={Var2=44..60}] Res1 87
scoreboard players set @s[scores={Var2=61..77}] Res1 86
scoreboard players set @s[scores={Var2=78..95}] Res1 85
scoreboard players set @s[scores={Var2=96..112}] Res1 84
scoreboard players set @s[scores={Var2=113..129}] Res1 83
scoreboard players set @s[scores={Var2=130..147}] Res1 82
scoreboard players set @s[scores={Var2=148..164}] Res1 81
scoreboard players set @s[scores={Var2=165..181}] Res1 80
scoreboard players set @s[scores={Var2=182..198}] Res1 79
scoreboard players set @s[scores={Var2=199..215}] Res1 78
scoreboard players set @s[scores={Var2=216..232}] Res1 77
scoreboard players set @s[scores={Var2=233..249}] Res1 76
scoreboard players set @s[scores={Var2=250..266}] Res1 75
scoreboard players set @s[scores={Var2=267..283}] Res1 74
scoreboard players set @s[scores={Var2=284..300}] Res1 73
scoreboard players set @s[scores={Var2=301..316}] Res1 72
scoreboard players set @s[scores={Var2=317..333}] Res1 71
scoreboard players set @s[scores={Var2=334..349}] Res1 70
scoreboard players set @s[scores={Var2=350..365}] Res1 69
scoreboard players set @s[scores={Var2=366..382}] Res1 68
scoreboard players set @s[scores={Var2=383..398}] Res1 67
scoreboard players set @s[scores={Var2=399..414}] Res1 66
scoreboard players set @s[scores={Var2=415..429}] Res1 65
scoreboard players set @s[scores={Var2=430..445}] Res1 64
scoreboard players set @s[scores={Var2=446..461}] Res1 63
scoreboard players set @s[scores={Var2=462..476}] Res1 62
scoreboard players set @s[scores={Var2=477..491}] Res1 61
scoreboard players set @s[scores={Var2=492..506}] Res1 60
scoreboard players set @s[scores={Var2=507..521}] Res1 59
scoreboard players set @s[scores={Var2=522..536}] Res1 58
scoreboard players set @s[scores={Var2=537..551}] Res1 57
scoreboard players set @s[scores={Var2=552..565}] Res1 56
scoreboard players set @s[scores={Var2=566..580}] Res1 55
scoreboard players set @s[scores={Var2=581..594}] Res1 54
scoreboard players set @s[scores={Var2=595..608}] Res1 53
scoreboard players set @s[scores={Var2=609..621}] Res1 52
scoreboard players set @s[scores={Var2=622..635}] Res1 51
scoreboard players set @s[scores={Var2=636..648}] Res1 50
scoreboard players set @s[scores={Var2=649..662}] Res1 49
scoreboard players set @s[scores={Var2=663..675}] Res1 48
scoreboard players set @s[scores={Var2=676..687}] Res1 47
scoreboard players set @s[scores={Var2=688..700}] Res1 46
scoreboard players set @s[scores={Var2=701..712}] Res1 45
scoreboard players set @s[scores={Var2=713..724}] Res1 44
scoreboard players set @s[scores={Var2=725..736}] Res1 43
scoreboard players set @s[scores={Var2=737..748}] Res1 42
scoreboard players set @s[scores={Var2=749..759}] Res1 41
scoreboard players set @s[scores={Var2=760..771}] Res1 40
scoreboard players set @s[scores={Var2=772..782}] Res1 39
scoreboard players set @s[scores={Var2=783..792}] Res1 38
scoreboard players set @s[scores={Var2=793..803}] Res1 37
scoreboard players set @s[scores={Var2=804..813}] Res1 36
scoreboard players set @s[scores={Var2=814..823}] Res1 35
scoreboard players set @s[scores={Var2=824..833}] Res1 34
scoreboard players set @s[scores={Var2=834..842}] Res1 33
scoreboard players set @s[scores={Var2=843..852}] Res1 32
scoreboard players set @s[scores={Var2=853..861}] Res1 31
scoreboard players set @s[scores={Var2=862..869}] Res1 30
scoreboard players set @s[scores={Var2=870..878}] Res1 29
scoreboard players set @s[scores={Var2=879..886}] Res1 28
scoreboard players set @s[scores={Var2=887..894}] Res1 27
scoreboard players set @s[scores={Var2=895..902}] Res1 26
scoreboard players set @s[scores={Var2=903..909}] Res1 25
scoreboard players set @s[scores={Var2=910..916}] Res1 24
scoreboard players set @s[scores={Var2=917..923}] Res1 23
scoreboard players set @s[scores={Var2=924..929}] Res1 22
scoreboard players set @s[scores={Var2=930..936}] Res1 21
scoreboard players set @s[scores={Var2=937..942}] Res1 20
scoreboard players set @s[scores={Var2=943..947}] Res1 19
scoreboard players set @s[scores={Var2=948..953}] Res1 18
scoreboard players set @s[scores={Var2=954..958}] Res1 17
scoreboard players set @s[scores={Var2=959..963}] Res1 16
scoreboard players set @s[scores={Var2=964..967}] Res1 15
scoreboard players set @s[scores={Var2=968..971}] Res1 14
scoreboard players set @s[scores={Var2=972..975}] Res1 13
scoreboard players set @s[scores={Var2=976..979}] Res1 12
scoreboard players set @s[scores={Var2=980..982}] Res1 11
scoreboard players set @s[scores={Var2=983..985}] Res1 10
scoreboard players set @s[scores={Var2=986..988}] Res1 9
scoreboard players set @s[scores={Var2=989..990}] Res1 8
scoreboard players set @s[scores={Var2=991..993}] Res1 7
scoreboard players set @s[scores={Var2=994}] Res1 6
scoreboard players set @s[scores={Var2=995..996}] Res1 5
scoreboard players set @s[scores={Var2=997}] Res1 4
scoreboard players set @s[scores={Var2=998}] Res1 3
scoreboard players set @s[scores={Var2=999}] Res1 2
scoreboard players set @s[scores={Var2=1000}] Res1 0

scoreboard players set @s[scores={Var1=..-1}] Var2 180
scoreboard players operation @s[scores={Var1=..-1}] Var2 -= @s Res1
scoreboard players operation @s[scores={Var1=..-1}] Res1 = @s Var2
