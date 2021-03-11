#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/arscos
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: true
# Note:
# - This function returns acos(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

# Input: @s glib.var0 (score): scalar on interval [-1000;1000]
# Output: @s glib.res0 (score): angle on interval [0;180]

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var1 = @s glib.var0
scoreboard players operation @s[scores={glib.var1=..-1}] glib.var1 *= -1 glib.const

scoreboard players set @s[scores={glib.var1=0..8}] glib.res0 90
scoreboard players set @s[scores={glib.var1=9..25}] glib.res0 89
scoreboard players set @s[scores={glib.var1=26..43}] glib.res0 88
scoreboard players set @s[scores={glib.var1=44..60}] glib.res0 87
scoreboard players set @s[scores={glib.var1=61..77}] glib.res0 86
scoreboard players set @s[scores={glib.var1=78..95}] glib.res0 85
scoreboard players set @s[scores={glib.var1=96..112}] glib.res0 84
scoreboard players set @s[scores={glib.var1=113..129}] glib.res0 83
scoreboard players set @s[scores={glib.var1=130..147}] glib.res0 82
scoreboard players set @s[scores={glib.var1=148..164}] glib.res0 81
scoreboard players set @s[scores={glib.var1=165..181}] glib.res0 80
scoreboard players set @s[scores={glib.var1=182..198}] glib.res0 79
scoreboard players set @s[scores={glib.var1=199..215}] glib.res0 78
scoreboard players set @s[scores={glib.var1=216..232}] glib.res0 77
scoreboard players set @s[scores={glib.var1=233..249}] glib.res0 76
scoreboard players set @s[scores={glib.var1=250..266}] glib.res0 75
scoreboard players set @s[scores={glib.var1=267..283}] glib.res0 74
scoreboard players set @s[scores={glib.var1=284..300}] glib.res0 73
scoreboard players set @s[scores={glib.var1=301..316}] glib.res0 72
scoreboard players set @s[scores={glib.var1=317..333}] glib.res0 71
scoreboard players set @s[scores={glib.var1=334..349}] glib.res0 70
scoreboard players set @s[scores={glib.var1=350..365}] glib.res0 69
scoreboard players set @s[scores={glib.var1=366..382}] glib.res0 68
scoreboard players set @s[scores={glib.var1=383..398}] glib.res0 67
scoreboard players set @s[scores={glib.var1=399..414}] glib.res0 66
scoreboard players set @s[scores={glib.var1=415..429}] glib.res0 65
scoreboard players set @s[scores={glib.var1=430..445}] glib.res0 64
scoreboard players set @s[scores={glib.var1=446..461}] glib.res0 63
scoreboard players set @s[scores={glib.var1=462..476}] glib.res0 62
scoreboard players set @s[scores={glib.var1=477..491}] glib.res0 61
scoreboard players set @s[scores={glib.var1=492..506}] glib.res0 60
scoreboard players set @s[scores={glib.var1=507..521}] glib.res0 59
scoreboard players set @s[scores={glib.var1=522..536}] glib.res0 58
scoreboard players set @s[scores={glib.var1=537..551}] glib.res0 57
scoreboard players set @s[scores={glib.var1=552..565}] glib.res0 56
scoreboard players set @s[scores={glib.var1=566..580}] glib.res0 55
scoreboard players set @s[scores={glib.var1=581..594}] glib.res0 54
scoreboard players set @s[scores={glib.var1=595..608}] glib.res0 53
scoreboard players set @s[scores={glib.var1=609..621}] glib.res0 52
scoreboard players set @s[scores={glib.var1=622..635}] glib.res0 51
scoreboard players set @s[scores={glib.var1=636..648}] glib.res0 50
scoreboard players set @s[scores={glib.var1=649..662}] glib.res0 49
scoreboard players set @s[scores={glib.var1=663..675}] glib.res0 48
scoreboard players set @s[scores={glib.var1=676..687}] glib.res0 47
scoreboard players set @s[scores={glib.var1=688..700}] glib.res0 46
scoreboard players set @s[scores={glib.var1=701..712}] glib.res0 45
scoreboard players set @s[scores={glib.var1=713..724}] glib.res0 44
scoreboard players set @s[scores={glib.var1=725..736}] glib.res0 43
scoreboard players set @s[scores={glib.var1=737..748}] glib.res0 42
scoreboard players set @s[scores={glib.var1=749..759}] glib.res0 41
scoreboard players set @s[scores={glib.var1=760..771}] glib.res0 40
scoreboard players set @s[scores={glib.var1=772..782}] glib.res0 39
scoreboard players set @s[scores={glib.var1=783..792}] glib.res0 38
scoreboard players set @s[scores={glib.var1=793..803}] glib.res0 37
scoreboard players set @s[scores={glib.var1=804..813}] glib.res0 36
scoreboard players set @s[scores={glib.var1=814..823}] glib.res0 35
scoreboard players set @s[scores={glib.var1=824..833}] glib.res0 34
scoreboard players set @s[scores={glib.var1=834..842}] glib.res0 33
scoreboard players set @s[scores={glib.var1=843..852}] glib.res0 32
scoreboard players set @s[scores={glib.var1=853..861}] glib.res0 31
scoreboard players set @s[scores={glib.var1=862..869}] glib.res0 30
scoreboard players set @s[scores={glib.var1=870..878}] glib.res0 29
scoreboard players set @s[scores={glib.var1=879..886}] glib.res0 28
scoreboard players set @s[scores={glib.var1=887..894}] glib.res0 27
scoreboard players set @s[scores={glib.var1=895..902}] glib.res0 26
scoreboard players set @s[scores={glib.var1=903..909}] glib.res0 25
scoreboard players set @s[scores={glib.var1=910..916}] glib.res0 24
scoreboard players set @s[scores={glib.var1=917..923}] glib.res0 23
scoreboard players set @s[scores={glib.var1=924..929}] glib.res0 22
scoreboard players set @s[scores={glib.var1=930..936}] glib.res0 21
scoreboard players set @s[scores={glib.var1=937..942}] glib.res0 20
scoreboard players set @s[scores={glib.var1=943..947}] glib.res0 19
scoreboard players set @s[scores={glib.var1=948..953}] glib.res0 18
scoreboard players set @s[scores={glib.var1=954..958}] glib.res0 17
scoreboard players set @s[scores={glib.var1=959..963}] glib.res0 16
scoreboard players set @s[scores={glib.var1=964..967}] glib.res0 15
scoreboard players set @s[scores={glib.var1=968..971}] glib.res0 14
scoreboard players set @s[scores={glib.var1=972..975}] glib.res0 13
scoreboard players set @s[scores={glib.var1=976..979}] glib.res0 12
scoreboard players set @s[scores={glib.var1=980..982}] glib.res0 11
scoreboard players set @s[scores={glib.var1=983..985}] glib.res0 10
scoreboard players set @s[scores={glib.var1=986..988}] glib.res0 9
scoreboard players set @s[scores={glib.var1=989..990}] glib.res0 8
scoreboard players set @s[scores={glib.var1=991..993}] glib.res0 7
scoreboard players set @s[scores={glib.var1=994}] glib.res0 6
scoreboard players set @s[scores={glib.var1=995..996}] glib.res0 5
scoreboard players set @s[scores={glib.var1=997}] glib.res0 4
scoreboard players set @s[scores={glib.var1=998}] glib.res0 3
scoreboard players set @s[scores={glib.var1=999}] glib.res0 2
scoreboard players set @s[scores={glib.var1=1000}] glib.res0 0

scoreboard players set math.arccos glib.var0 180
scoreboard players operation math.arccos glib.var0 -= @s glib.res0
scoreboard players operation @s[scores={glib.var0=..-1}] glib.res0 = math.arccos glib.var0
