#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Luludatra
# Contributors: KubbyDev
# MC Version: 1.13
# Last check:

# Original path: glib:math/arcsin
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - This function returns asin(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
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

scoreboard players set @s[scores={glib.var2=0..8}] glib.res 0
scoreboard players set @s[scores={glib.var2=8..26}] glib.res 1
scoreboard players set @s[scores={glib.var2=26..43}] glib.res 2
scoreboard players set @s[scores={glib.var2=43..61}] glib.res 3
scoreboard players set @s[scores={glib.var2=61..78}] glib.res 4
scoreboard players set @s[scores={glib.var2=78..95}] glib.res 5
scoreboard players set @s[scores={glib.var2=95..113}] glib.res 6
scoreboard players set @s[scores={glib.var2=113..130}] glib.res 7
scoreboard players set @s[scores={glib.var2=130..156}] glib.res 8
scoreboard players set @s[scores={glib.var2=156..182}] glib.res 9
scoreboard players set @s[scores={glib.var2=182..199}] glib.res 10
scoreboard players set @s[scores={glib.var2=199..216}] glib.res 11
scoreboard players set @s[scores={glib.var2=216..233}] glib.res 12
scoreboard players set @s[scores={glib.var2=233..250}] glib.res 13
scoreboard players set @s[scores={glib.var2=250..267}] glib.res 14
scoreboard players set @s[scores={glib.var2=267..284}] glib.res 15
scoreboard players set @s[scores={glib.var2=284..300}] glib.res 16
scoreboard players set @s[scores={glib.var2=300..317}] glib.res 17
scoreboard players set @s[scores={glib.var2=317..333}] glib.res 18
scoreboard players set @s[scores={glib.var2=333..350}] glib.res 19
scoreboard players set @s[scores={glib.var2=350..366}] glib.res 20
scoreboard players set @s[scores={glib.var2=366..382}] glib.res 21
scoreboard players set @s[scores={glib.var2=382..398}] glib.res 22
scoreboard players set @s[scores={glib.var2=398..414}] glib.res 23
scoreboard players set @s[scores={glib.var2=414..430}] glib.res 24
scoreboard players set @s[scores={glib.var2=430..446}] glib.res 25
scoreboard players set @s[scores={glib.var2=446..461}] glib.res 26
scoreboard players set @s[scores={glib.var2=461..477}] glib.res 27
scoreboard players set @s[scores={glib.var2=477..492}] glib.res 28
scoreboard players set @s[scores={glib.var2=492..507}] glib.res 29
scoreboard players set @s[scores={glib.var2=507..522}] glib.res 30
scoreboard players set @s[scores={glib.var2=522..537}] glib.res 31
scoreboard players set @s[scores={glib.var2=537..551}] glib.res 32
scoreboard players set @s[scores={glib.var2=552..566}] glib.res 33
scoreboard players set @s[scores={glib.var2=566..580}] glib.res 34
scoreboard players set @s[scores={glib.var2=580..594}] glib.res 35
scoreboard players set @s[scores={glib.var2=594..608}] glib.res 36
scoreboard players set @s[scores={glib.var2=608..622}] glib.res 37
scoreboard players set @s[scores={glib.var2=622..636}] glib.res 38
scoreboard players set @s[scores={glib.var2=636..649}] glib.res 39
scoreboard players set @s[scores={glib.var2=649..662}] glib.res 40
scoreboard players set @s[scores={glib.var2=662..675}] glib.res 41
scoreboard players set @s[scores={glib.var2=675..688}] glib.res 42
scoreboard players set @s[scores={glib.var2=688..700}] glib.res 43
scoreboard players set @s[scores={glib.var2=701..713}] glib.res 44
scoreboard players set @s[scores={glib.var2=713..725}] glib.res 45
scoreboard players set @s[scores={glib.var2=725..737}] glib.res 46
scoreboard players set @s[scores={glib.var2=737..748}] glib.res 47
scoreboard players set @s[scores={glib.var2=749..760}] glib.res 48
scoreboard players set @s[scores={glib.var2=760..771}] glib.res 49
scoreboard players set @s[scores={glib.var2=771..782}] glib.res 50
scoreboard players set @s[scores={glib.var2=782..793}] glib.res 51
scoreboard players set @s[scores={glib.var2=793..803}] glib.res 52
scoreboard players set @s[scores={glib.var2=803..814}] glib.res 53
scoreboard players set @s[scores={glib.var2=814..824}] glib.res 54
scoreboard players set @s[scores={glib.var2=824..833}] glib.res 55
scoreboard players set @s[scores={glib.var2=833..843}] glib.res 56
scoreboard players set @s[scores={glib.var2=843..852}] glib.res 57
scoreboard players set @s[scores={glib.var2=852..861}] glib.res 58
scoreboard players set @s[scores={glib.var2=861..870}] glib.res 59
scoreboard players set @s[scores={glib.var2=870..878}] glib.res 60
scoreboard players set @s[scores={glib.var2=878..887}] glib.res 61
scoreboard players set @s[scores={glib.var2=887..894}] glib.res 62
scoreboard players set @s[scores={glib.var2=895..902}] glib.res 63
scoreboard players set @s[scores={glib.var2=902..909}] glib.res 64
scoreboard players set @s[scores={glib.var2=910..917}] glib.res 65
scoreboard players set @s[scores={glib.var2=917..923}] glib.res 66
scoreboard players set @s[scores={glib.var2=923..930}] glib.res 67
scoreboard players set @s[scores={glib.var2=930..936}] glib.res 68
scoreboard players set @s[scores={glib.var2=936..942}] glib.res 69
scoreboard players set @s[scores={glib.var2=942..948}] glib.res 70
scoreboard players set @s[scores={glib.var2=948..953}] glib.res 71
scoreboard players set @s[scores={glib.var2=953..958}] glib.res 72
scoreboard players set @s[scores={glib.var2=958..963}] glib.res 73
scoreboard players set @s[scores={glib.var2=963..968}] glib.res 74
scoreboard players set @s[scores={glib.var2=968..972}] glib.res 75
scoreboard players set @s[scores={glib.var2=972..976}] glib.res 76
scoreboard players set @s[scores={glib.var2=976..979}] glib.res 77
scoreboard players set @s[scores={glib.var2=980..983}] glib.res 78
scoreboard players set @s[scores={glib.var2=983..986}] glib.res 79
scoreboard players set @s[scores={glib.var2=986..988}] glib.res 81
scoreboard players set @s[scores={glib.var2=989..991}] glib.res 82
scoreboard players set @s[scores={glib.var2=991..993}] glib.res 83
scoreboard players set @s[scores={glib.var2=993..995}] glib.res 84
scoreboard players set @s[scores={glib.var2=995..996}] glib.res 85
scoreboard players set @s[scores={glib.var2=996..998}] glib.res 86
scoreboard players set @s[scores={glib.var2=998..999}] glib.res 87
scoreboard players set @s[scores={glib.var2=999}] glib.res 88
scoreboard players set @s[scores={glib.var2=999}] glib.res 89
scoreboard players set @s[scores={glib.var2=999..1000}] glib.res 90

scoreboard players operation @s[scores={glib.var=..-1}] glib.res *= -1 glib.const
