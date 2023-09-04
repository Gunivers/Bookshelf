#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:arscos
# Documentation: https://bs-core.readthedocs.io//math
# Parallelizable: true
# Note:
# - This function returns acos(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

# Input: @s bs.in.0 (score): scalar on interval [-1000;1000]
# Output: @s bs.out.0 (score): angle on interval [0;180]

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.in.1 = @s bs.in.0
scoreboard players operation @s[scores={bs.in.1=..-1}] bs.in.1 *= -1 bs.const

scoreboard players set @s[scores={bs.in.1=0..8}] bs.out.0 90
scoreboard players set @s[scores={bs.in.1=9..25}] bs.out.0 89
scoreboard players set @s[scores={bs.in.1=26..43}] bs.out.0 88
scoreboard players set @s[scores={bs.in.1=44..60}] bs.out.0 87
scoreboard players set @s[scores={bs.in.1=61..77}] bs.out.0 86
scoreboard players set @s[scores={bs.in.1=78..95}] bs.out.0 85
scoreboard players set @s[scores={bs.in.1=96..112}] bs.out.0 84
scoreboard players set @s[scores={bs.in.1=113..129}] bs.out.0 83
scoreboard players set @s[scores={bs.in.1=130..147}] bs.out.0 82
scoreboard players set @s[scores={bs.in.1=148..164}] bs.out.0 81
scoreboard players set @s[scores={bs.in.1=165..181}] bs.out.0 80
scoreboard players set @s[scores={bs.in.1=182..198}] bs.out.0 79
scoreboard players set @s[scores={bs.in.1=199..215}] bs.out.0 78
scoreboard players set @s[scores={bs.in.1=216..232}] bs.out.0 77
scoreboard players set @s[scores={bs.in.1=233..249}] bs.out.0 76
scoreboard players set @s[scores={bs.in.1=250..266}] bs.out.0 75
scoreboard players set @s[scores={bs.in.1=267..283}] bs.out.0 74
scoreboard players set @s[scores={bs.in.1=284..300}] bs.out.0 73
scoreboard players set @s[scores={bs.in.1=301..316}] bs.out.0 72
scoreboard players set @s[scores={bs.in.1=317..333}] bs.out.0 71
scoreboard players set @s[scores={bs.in.1=334..349}] bs.out.0 70
scoreboard players set @s[scores={bs.in.1=350..365}] bs.out.0 69
scoreboard players set @s[scores={bs.in.1=366..382}] bs.out.0 68
scoreboard players set @s[scores={bs.in.1=383..398}] bs.out.0 67
scoreboard players set @s[scores={bs.in.1=399..414}] bs.out.0 66
scoreboard players set @s[scores={bs.in.1=415..429}] bs.out.0 65
scoreboard players set @s[scores={bs.in.1=430..445}] bs.out.0 64
scoreboard players set @s[scores={bs.in.1=446..461}] bs.out.0 63
scoreboard players set @s[scores={bs.in.1=462..476}] bs.out.0 62
scoreboard players set @s[scores={bs.in.1=477..491}] bs.out.0 61
scoreboard players set @s[scores={bs.in.1=492..506}] bs.out.0 60
scoreboard players set @s[scores={bs.in.1=507..521}] bs.out.0 59
scoreboard players set @s[scores={bs.in.1=522..536}] bs.out.0 58
scoreboard players set @s[scores={bs.in.1=537..551}] bs.out.0 57
scoreboard players set @s[scores={bs.in.1=552..565}] bs.out.0 56
scoreboard players set @s[scores={bs.in.1=566..580}] bs.out.0 55
scoreboard players set @s[scores={bs.in.1=581..594}] bs.out.0 54
scoreboard players set @s[scores={bs.in.1=595..608}] bs.out.0 53
scoreboard players set @s[scores={bs.in.1=609..621}] bs.out.0 52
scoreboard players set @s[scores={bs.in.1=622..635}] bs.out.0 51
scoreboard players set @s[scores={bs.in.1=636..648}] bs.out.0 50
scoreboard players set @s[scores={bs.in.1=649..662}] bs.out.0 49
scoreboard players set @s[scores={bs.in.1=663..675}] bs.out.0 48
scoreboard players set @s[scores={bs.in.1=676..687}] bs.out.0 47
scoreboard players set @s[scores={bs.in.1=688..700}] bs.out.0 46
scoreboard players set @s[scores={bs.in.1=701..712}] bs.out.0 45
scoreboard players set @s[scores={bs.in.1=713..724}] bs.out.0 44
scoreboard players set @s[scores={bs.in.1=725..736}] bs.out.0 43
scoreboard players set @s[scores={bs.in.1=737..748}] bs.out.0 42
scoreboard players set @s[scores={bs.in.1=749..759}] bs.out.0 41
scoreboard players set @s[scores={bs.in.1=760..771}] bs.out.0 40
scoreboard players set @s[scores={bs.in.1=772..782}] bs.out.0 39
scoreboard players set @s[scores={bs.in.1=783..792}] bs.out.0 38
scoreboard players set @s[scores={bs.in.1=793..803}] bs.out.0 37
scoreboard players set @s[scores={bs.in.1=804..813}] bs.out.0 36
scoreboard players set @s[scores={bs.in.1=814..823}] bs.out.0 35
scoreboard players set @s[scores={bs.in.1=824..833}] bs.out.0 34
scoreboard players set @s[scores={bs.in.1=834..842}] bs.out.0 33
scoreboard players set @s[scores={bs.in.1=843..852}] bs.out.0 32
scoreboard players set @s[scores={bs.in.1=853..861}] bs.out.0 31
scoreboard players set @s[scores={bs.in.1=862..869}] bs.out.0 30
scoreboard players set @s[scores={bs.in.1=870..878}] bs.out.0 29
scoreboard players set @s[scores={bs.in.1=879..886}] bs.out.0 28
scoreboard players set @s[scores={bs.in.1=887..894}] bs.out.0 27
scoreboard players set @s[scores={bs.in.1=895..902}] bs.out.0 26
scoreboard players set @s[scores={bs.in.1=903..909}] bs.out.0 25
scoreboard players set @s[scores={bs.in.1=910..916}] bs.out.0 24
scoreboard players set @s[scores={bs.in.1=917..923}] bs.out.0 23
scoreboard players set @s[scores={bs.in.1=924..929}] bs.out.0 22
scoreboard players set @s[scores={bs.in.1=930..936}] bs.out.0 21
scoreboard players set @s[scores={bs.in.1=937..942}] bs.out.0 20
scoreboard players set @s[scores={bs.in.1=943..947}] bs.out.0 19
scoreboard players set @s[scores={bs.in.1=948..953}] bs.out.0 18
scoreboard players set @s[scores={bs.in.1=954..958}] bs.out.0 17
scoreboard players set @s[scores={bs.in.1=959..963}] bs.out.0 16
scoreboard players set @s[scores={bs.in.1=964..967}] bs.out.0 15
scoreboard players set @s[scores={bs.in.1=968..971}] bs.out.0 14
scoreboard players set @s[scores={bs.in.1=972..975}] bs.out.0 13
scoreboard players set @s[scores={bs.in.1=976..979}] bs.out.0 12
scoreboard players set @s[scores={bs.in.1=980..982}] bs.out.0 11
scoreboard players set @s[scores={bs.in.1=983..985}] bs.out.0 10
scoreboard players set @s[scores={bs.in.1=986..988}] bs.out.0 9
scoreboard players set @s[scores={bs.in.1=989..990}] bs.out.0 8
scoreboard players set @s[scores={bs.in.1=991..993}] bs.out.0 7
scoreboard players set @s[scores={bs.in.1=994}] bs.out.0 6
scoreboard players set @s[scores={bs.in.1=995..996}] bs.out.0 5
scoreboard players set @s[scores={bs.in.1=997}] bs.out.0 4
scoreboard players set @s[scores={bs.in.1=998}] bs.out.0 3
scoreboard players set @s[scores={bs.in.1=999}] bs.out.0 2
scoreboard players set @s[scores={bs.in.1=1000}] bs.out.0 0

scoreboard players set math.arccos bs.in.0 180
scoreboard players operation math.arccos bs.in.0 -= @s bs.out.0
scoreboard players operation @s[scores={bs.in.0=..-1}] bs.out.0 = math.arccos bs.in.0
