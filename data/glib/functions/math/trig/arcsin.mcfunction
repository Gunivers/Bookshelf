#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Luludatra
# Contributors: KubbyDev
# MC Version: 1.13
# Last check:

# Original path: glib:math/arcsin
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: true
# Note:
# - This function returns asin(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

# Input: @s glib.var0 (score): scalar on interval [-1000;1000]
# Output: @s glib.res0 (score): angle on interval [-90;90]

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var1 = @s glib.var0
scoreboard players operation @s[scores={glib.var1=..-1}] glib.var1 *= -1 glib.const

scoreboard players set @s[scores={glib.var1=0..8}] glib.res0 0
scoreboard players set @s[scores={glib.var1=8..26}] glib.res0 1
scoreboard players set @s[scores={glib.var1=26..43}] glib.res0 2
scoreboard players set @s[scores={glib.var1=43..61}] glib.res0 3
scoreboard players set @s[scores={glib.var1=61..78}] glib.res0 4
scoreboard players set @s[scores={glib.var1=78..95}] glib.res0 5
scoreboard players set @s[scores={glib.var1=95..113}] glib.res0 6
scoreboard players set @s[scores={glib.var1=113..130}] glib.res0 7
scoreboard players set @s[scores={glib.var1=130..156}] glib.res0 8
scoreboard players set @s[scores={glib.var1=156..182}] glib.res0 9
scoreboard players set @s[scores={glib.var1=182..199}] glib.res0 10
scoreboard players set @s[scores={glib.var1=199..216}] glib.res0 11
scoreboard players set @s[scores={glib.var1=216..233}] glib.res0 12
scoreboard players set @s[scores={glib.var1=233..250}] glib.res0 13
scoreboard players set @s[scores={glib.var1=250..267}] glib.res0 14
scoreboard players set @s[scores={glib.var1=267..284}] glib.res0 15
scoreboard players set @s[scores={glib.var1=284..300}] glib.res0 16
scoreboard players set @s[scores={glib.var1=300..317}] glib.res0 17
scoreboard players set @s[scores={glib.var1=317..333}] glib.res0 18
scoreboard players set @s[scores={glib.var1=333..350}] glib.res0 19
scoreboard players set @s[scores={glib.var1=350..366}] glib.res0 20
scoreboard players set @s[scores={glib.var1=366..382}] glib.res0 21
scoreboard players set @s[scores={glib.var1=382..398}] glib.res0 22
scoreboard players set @s[scores={glib.var1=398..414}] glib.res0 23
scoreboard players set @s[scores={glib.var1=414..430}] glib.res0 24
scoreboard players set @s[scores={glib.var1=430..446}] glib.res0 25
scoreboard players set @s[scores={glib.var1=446..461}] glib.res0 26
scoreboard players set @s[scores={glib.var1=461..477}] glib.res0 27
scoreboard players set @s[scores={glib.var1=477..492}] glib.res0 28
scoreboard players set @s[scores={glib.var1=492..507}] glib.res0 29
scoreboard players set @s[scores={glib.var1=507..522}] glib.res0 30
scoreboard players set @s[scores={glib.var1=522..537}] glib.res0 31
scoreboard players set @s[scores={glib.var1=537..551}] glib.res0 32
scoreboard players set @s[scores={glib.var1=552..566}] glib.res0 33
scoreboard players set @s[scores={glib.var1=566..580}] glib.res0 34
scoreboard players set @s[scores={glib.var1=580..594}] glib.res0 35
scoreboard players set @s[scores={glib.var1=594..608}] glib.res0 36
scoreboard players set @s[scores={glib.var1=608..622}] glib.res0 37
scoreboard players set @s[scores={glib.var1=622..636}] glib.res0 38
scoreboard players set @s[scores={glib.var1=636..649}] glib.res0 39
scoreboard players set @s[scores={glib.var1=649..662}] glib.res0 40
scoreboard players set @s[scores={glib.var1=662..675}] glib.res0 41
scoreboard players set @s[scores={glib.var1=675..688}] glib.res0 42
scoreboard players set @s[scores={glib.var1=688..700}] glib.res0 43
scoreboard players set @s[scores={glib.var1=701..713}] glib.res0 44
scoreboard players set @s[scores={glib.var1=713..725}] glib.res0 45
scoreboard players set @s[scores={glib.var1=725..737}] glib.res0 46
scoreboard players set @s[scores={glib.var1=737..748}] glib.res0 47
scoreboard players set @s[scores={glib.var1=749..760}] glib.res0 48
scoreboard players set @s[scores={glib.var1=760..771}] glib.res0 49
scoreboard players set @s[scores={glib.var1=771..782}] glib.res0 50
scoreboard players set @s[scores={glib.var1=782..793}] glib.res0 51
scoreboard players set @s[scores={glib.var1=793..803}] glib.res0 52
scoreboard players set @s[scores={glib.var1=803..814}] glib.res0 53
scoreboard players set @s[scores={glib.var1=814..824}] glib.res0 54
scoreboard players set @s[scores={glib.var1=824..833}] glib.res0 55
scoreboard players set @s[scores={glib.var1=833..843}] glib.res0 56
scoreboard players set @s[scores={glib.var1=843..852}] glib.res0 57
scoreboard players set @s[scores={glib.var1=852..861}] glib.res0 58
scoreboard players set @s[scores={glib.var1=861..870}] glib.res0 59
scoreboard players set @s[scores={glib.var1=870..878}] glib.res0 60
scoreboard players set @s[scores={glib.var1=878..887}] glib.res0 61
scoreboard players set @s[scores={glib.var1=887..894}] glib.res0 62
scoreboard players set @s[scores={glib.var1=895..902}] glib.res0 63
scoreboard players set @s[scores={glib.var1=902..909}] glib.res0 64
scoreboard players set @s[scores={glib.var1=910..917}] glib.res0 65
scoreboard players set @s[scores={glib.var1=917..923}] glib.res0 66
scoreboard players set @s[scores={glib.var1=923..930}] glib.res0 67
scoreboard players set @s[scores={glib.var1=930..936}] glib.res0 68
scoreboard players set @s[scores={glib.var1=936..942}] glib.res0 69
scoreboard players set @s[scores={glib.var1=942..948}] glib.res0 70
scoreboard players set @s[scores={glib.var1=948..953}] glib.res0 71
scoreboard players set @s[scores={glib.var1=953..958}] glib.res0 72
scoreboard players set @s[scores={glib.var1=958..963}] glib.res0 73
scoreboard players set @s[scores={glib.var1=963..968}] glib.res0 74
scoreboard players set @s[scores={glib.var1=968..972}] glib.res0 75
scoreboard players set @s[scores={glib.var1=972..976}] glib.res0 76
scoreboard players set @s[scores={glib.var1=976..979}] glib.res0 77
scoreboard players set @s[scores={glib.var1=980..983}] glib.res0 78
scoreboard players set @s[scores={glib.var1=983..986}] glib.res0 79
scoreboard players set @s[scores={glib.var1=986..988}] glib.res0 81
scoreboard players set @s[scores={glib.var1=989..991}] glib.res0 82
scoreboard players set @s[scores={glib.var1=991..993}] glib.res0 83
scoreboard players set @s[scores={glib.var1=993..995}] glib.res0 84
scoreboard players set @s[scores={glib.var1=995..996}] glib.res0 85
scoreboard players set @s[scores={glib.var1=996..998}] glib.res0 86
scoreboard players set @s[scores={glib.var1=998..999}] glib.res0 87
scoreboard players set @s[scores={glib.var1=999}] glib.res0 88
scoreboard players set @s[scores={glib.var1=999}] glib.res0 89
scoreboard players set @s[scores={glib.var1=999..1000}] glib.res0 90

scoreboard players operation @s[scores={glib.var0=..-1}] glib.res0 *= -1 glib.const
