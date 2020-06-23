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

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var2 = @s glib.var
scoreboard players operation @s[scores={glib.var2=..-1}] glib.var2 *= -1 glib.const

scoreboard players set @s[scores={glib.var2=0..8}] glib.res 90
scoreboard players set @s[scores={glib.var2=9..25}] glib.res 89
scoreboard players set @s[scores={glib.var2=26..43}] glib.res 88
scoreboard players set @s[scores={glib.var2=44..60}] glib.res 87
scoreboard players set @s[scores={glib.var2=61..77}] glib.res 86
scoreboard players set @s[scores={glib.var2=78..95}] glib.res 85
scoreboard players set @s[scores={glib.var2=96..112}] glib.res 84
scoreboard players set @s[scores={glib.var2=113..129}] glib.res 83
scoreboard players set @s[scores={glib.var2=130..147}] glib.res 82
scoreboard players set @s[scores={glib.var2=148..164}] glib.res 81
scoreboard players set @s[scores={glib.var2=165..181}] glib.res 80
scoreboard players set @s[scores={glib.var2=182..198}] glib.res 79
scoreboard players set @s[scores={glib.var2=199..215}] glib.res 78
scoreboard players set @s[scores={glib.var2=216..232}] glib.res 77
scoreboard players set @s[scores={glib.var2=233..249}] glib.res 76
scoreboard players set @s[scores={glib.var2=250..266}] glib.res 75
scoreboard players set @s[scores={glib.var2=267..283}] glib.res 74
scoreboard players set @s[scores={glib.var2=284..300}] glib.res 73
scoreboard players set @s[scores={glib.var2=301..316}] glib.res 72
scoreboard players set @s[scores={glib.var2=317..333}] glib.res 71
scoreboard players set @s[scores={glib.var2=334..349}] glib.res 70
scoreboard players set @s[scores={glib.var2=350..365}] glib.res 69
scoreboard players set @s[scores={glib.var2=366..382}] glib.res 68
scoreboard players set @s[scores={glib.var2=383..398}] glib.res 67
scoreboard players set @s[scores={glib.var2=399..414}] glib.res 66
scoreboard players set @s[scores={glib.var2=415..429}] glib.res 65
scoreboard players set @s[scores={glib.var2=430..445}] glib.res 64
scoreboard players set @s[scores={glib.var2=446..461}] glib.res 63
scoreboard players set @s[scores={glib.var2=462..476}] glib.res 62
scoreboard players set @s[scores={glib.var2=477..491}] glib.res 61
scoreboard players set @s[scores={glib.var2=492..506}] glib.res 60
scoreboard players set @s[scores={glib.var2=507..521}] glib.res 59
scoreboard players set @s[scores={glib.var2=522..536}] glib.res 58
scoreboard players set @s[scores={glib.var2=537..551}] glib.res 57
scoreboard players set @s[scores={glib.var2=552..565}] glib.res 56
scoreboard players set @s[scores={glib.var2=566..580}] glib.res 55
scoreboard players set @s[scores={glib.var2=581..594}] glib.res 54
scoreboard players set @s[scores={glib.var2=595..608}] glib.res 53
scoreboard players set @s[scores={glib.var2=609..621}] glib.res 52
scoreboard players set @s[scores={glib.var2=622..635}] glib.res 51
scoreboard players set @s[scores={glib.var2=636..648}] glib.res 50
scoreboard players set @s[scores={glib.var2=649..662}] glib.res 49
scoreboard players set @s[scores={glib.var2=663..675}] glib.res 48
scoreboard players set @s[scores={glib.var2=676..687}] glib.res 47
scoreboard players set @s[scores={glib.var2=688..700}] glib.res 46
scoreboard players set @s[scores={glib.var2=701..712}] glib.res 45
scoreboard players set @s[scores={glib.var2=713..724}] glib.res 44
scoreboard players set @s[scores={glib.var2=725..736}] glib.res 43
scoreboard players set @s[scores={glib.var2=737..748}] glib.res 42
scoreboard players set @s[scores={glib.var2=749..759}] glib.res 41
scoreboard players set @s[scores={glib.var2=760..771}] glib.res 40
scoreboard players set @s[scores={glib.var2=772..782}] glib.res 39
scoreboard players set @s[scores={glib.var2=783..792}] glib.res 38
scoreboard players set @s[scores={glib.var2=793..803}] glib.res 37
scoreboard players set @s[scores={glib.var2=804..813}] glib.res 36
scoreboard players set @s[scores={glib.var2=814..823}] glib.res 35
scoreboard players set @s[scores={glib.var2=824..833}] glib.res 34
scoreboard players set @s[scores={glib.var2=834..842}] glib.res 33
scoreboard players set @s[scores={glib.var2=843..852}] glib.res 32
scoreboard players set @s[scores={glib.var2=853..861}] glib.res 31
scoreboard players set @s[scores={glib.var2=862..869}] glib.res 30
scoreboard players set @s[scores={glib.var2=870..878}] glib.res 29
scoreboard players set @s[scores={glib.var2=879..886}] glib.res 28
scoreboard players set @s[scores={glib.var2=887..894}] glib.res 27
scoreboard players set @s[scores={glib.var2=895..902}] glib.res 26
scoreboard players set @s[scores={glib.var2=903..909}] glib.res 25
scoreboard players set @s[scores={glib.var2=910..916}] glib.res 24
scoreboard players set @s[scores={glib.var2=917..923}] glib.res 23
scoreboard players set @s[scores={glib.var2=924..929}] glib.res 22
scoreboard players set @s[scores={glib.var2=930..936}] glib.res 21
scoreboard players set @s[scores={glib.var2=937..942}] glib.res 20
scoreboard players set @s[scores={glib.var2=943..947}] glib.res 19
scoreboard players set @s[scores={glib.var2=948..953}] glib.res 18
scoreboard players set @s[scores={glib.var2=954..958}] glib.res 17
scoreboard players set @s[scores={glib.var2=959..963}] glib.res 16
scoreboard players set @s[scores={glib.var2=964..967}] glib.res 15
scoreboard players set @s[scores={glib.var2=968..971}] glib.res 14
scoreboard players set @s[scores={glib.var2=972..975}] glib.res 13
scoreboard players set @s[scores={glib.var2=976..979}] glib.res 12
scoreboard players set @s[scores={glib.var2=980..982}] glib.res 11
scoreboard players set @s[scores={glib.var2=983..985}] glib.res 10
scoreboard players set @s[scores={glib.var2=986..988}] glib.res 9
scoreboard players set @s[scores={glib.var2=989..990}] glib.res 8
scoreboard players set @s[scores={glib.var2=991..993}] glib.res 7
scoreboard players set @s[scores={glib.var2=994}] glib.res 6
scoreboard players set @s[scores={glib.var2=995..996}] glib.res 5
scoreboard players set @s[scores={glib.var2=997}] glib.res 4
scoreboard players set @s[scores={glib.var2=998}] glib.res 3
scoreboard players set @s[scores={glib.var2=999}] glib.res 2
scoreboard players set @s[scores={glib.var2=1000}] glib.res 0

scoreboard players set @s[scores={glib.var=..-1}] glib.var2 180
scoreboard players operation @s[scores={glib.var=..-1}] glib.var2 -= @s glib.res
scoreboard players operation @s[scores={glib.var=..-1}] glib.res = @s glib.var2
