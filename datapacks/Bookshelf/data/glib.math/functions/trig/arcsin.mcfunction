#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Luludatra
# Contributors: KubbyDev
# MC Version: 1.13
# Last check:

# Original path: bs.math:arcsin
# Documentation: https://glib-core.readthedocs.io//math
# Parallelizable: true
# Note:
# - This function returns asin(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

# Input: @s bs.var0 (score): scalar on interval [-1000;1000]
# Output: @s bs.res0 (score): angle on interval [-90;90]

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.var1 = @s bs.var0
scoreboard players operation @s[scores={bs.var1=..-1}] bs.var1 *= -1 bs.const

scoreboard players set @s[scores={bs.var1=0..8}] bs.res0 0
scoreboard players set @s[scores={bs.var1=8..26}] bs.res0 1
scoreboard players set @s[scores={bs.var1=26..43}] bs.res0 2
scoreboard players set @s[scores={bs.var1=43..61}] bs.res0 3
scoreboard players set @s[scores={bs.var1=61..78}] bs.res0 4
scoreboard players set @s[scores={bs.var1=78..95}] bs.res0 5
scoreboard players set @s[scores={bs.var1=95..113}] bs.res0 6
scoreboard players set @s[scores={bs.var1=113..130}] bs.res0 7
scoreboard players set @s[scores={bs.var1=130..156}] bs.res0 8
scoreboard players set @s[scores={bs.var1=156..182}] bs.res0 9
scoreboard players set @s[scores={bs.var1=182..199}] bs.res0 10
scoreboard players set @s[scores={bs.var1=199..216}] bs.res0 11
scoreboard players set @s[scores={bs.var1=216..233}] bs.res0 12
scoreboard players set @s[scores={bs.var1=233..250}] bs.res0 13
scoreboard players set @s[scores={bs.var1=250..267}] bs.res0 14
scoreboard players set @s[scores={bs.var1=267..284}] bs.res0 15
scoreboard players set @s[scores={bs.var1=284..300}] bs.res0 16
scoreboard players set @s[scores={bs.var1=300..317}] bs.res0 17
scoreboard players set @s[scores={bs.var1=317..333}] bs.res0 18
scoreboard players set @s[scores={bs.var1=333..350}] bs.res0 19
scoreboard players set @s[scores={bs.var1=350..366}] bs.res0 20
scoreboard players set @s[scores={bs.var1=366..382}] bs.res0 21
scoreboard players set @s[scores={bs.var1=382..398}] bs.res0 22
scoreboard players set @s[scores={bs.var1=398..414}] bs.res0 23
scoreboard players set @s[scores={bs.var1=414..430}] bs.res0 24
scoreboard players set @s[scores={bs.var1=430..446}] bs.res0 25
scoreboard players set @s[scores={bs.var1=446..461}] bs.res0 26
scoreboard players set @s[scores={bs.var1=461..477}] bs.res0 27
scoreboard players set @s[scores={bs.var1=477..492}] bs.res0 28
scoreboard players set @s[scores={bs.var1=492..507}] bs.res0 29
scoreboard players set @s[scores={bs.var1=507..522}] bs.res0 30
scoreboard players set @s[scores={bs.var1=522..537}] bs.res0 31
scoreboard players set @s[scores={bs.var1=537..551}] bs.res0 32
scoreboard players set @s[scores={bs.var1=552..566}] bs.res0 33
scoreboard players set @s[scores={bs.var1=566..580}] bs.res0 34
scoreboard players set @s[scores={bs.var1=580..594}] bs.res0 35
scoreboard players set @s[scores={bs.var1=594..608}] bs.res0 36
scoreboard players set @s[scores={bs.var1=608..622}] bs.res0 37
scoreboard players set @s[scores={bs.var1=622..636}] bs.res0 38
scoreboard players set @s[scores={bs.var1=636..649}] bs.res0 39
scoreboard players set @s[scores={bs.var1=649..662}] bs.res0 40
scoreboard players set @s[scores={bs.var1=662..675}] bs.res0 41
scoreboard players set @s[scores={bs.var1=675..688}] bs.res0 42
scoreboard players set @s[scores={bs.var1=688..700}] bs.res0 43
scoreboard players set @s[scores={bs.var1=701..713}] bs.res0 44
scoreboard players set @s[scores={bs.var1=713..725}] bs.res0 45
scoreboard players set @s[scores={bs.var1=725..737}] bs.res0 46
scoreboard players set @s[scores={bs.var1=737..748}] bs.res0 47
scoreboard players set @s[scores={bs.var1=749..760}] bs.res0 48
scoreboard players set @s[scores={bs.var1=760..771}] bs.res0 49
scoreboard players set @s[scores={bs.var1=771..782}] bs.res0 50
scoreboard players set @s[scores={bs.var1=782..793}] bs.res0 51
scoreboard players set @s[scores={bs.var1=793..803}] bs.res0 52
scoreboard players set @s[scores={bs.var1=803..814}] bs.res0 53
scoreboard players set @s[scores={bs.var1=814..824}] bs.res0 54
scoreboard players set @s[scores={bs.var1=824..833}] bs.res0 55
scoreboard players set @s[scores={bs.var1=833..843}] bs.res0 56
scoreboard players set @s[scores={bs.var1=843..852}] bs.res0 57
scoreboard players set @s[scores={bs.var1=852..861}] bs.res0 58
scoreboard players set @s[scores={bs.var1=861..870}] bs.res0 59
scoreboard players set @s[scores={bs.var1=870..878}] bs.res0 60
scoreboard players set @s[scores={bs.var1=878..887}] bs.res0 61
scoreboard players set @s[scores={bs.var1=887..894}] bs.res0 62
scoreboard players set @s[scores={bs.var1=895..902}] bs.res0 63
scoreboard players set @s[scores={bs.var1=902..909}] bs.res0 64
scoreboard players set @s[scores={bs.var1=910..917}] bs.res0 65
scoreboard players set @s[scores={bs.var1=917..923}] bs.res0 66
scoreboard players set @s[scores={bs.var1=923..930}] bs.res0 67
scoreboard players set @s[scores={bs.var1=930..936}] bs.res0 68
scoreboard players set @s[scores={bs.var1=936..942}] bs.res0 69
scoreboard players set @s[scores={bs.var1=942..948}] bs.res0 70
scoreboard players set @s[scores={bs.var1=948..953}] bs.res0 71
scoreboard players set @s[scores={bs.var1=953..958}] bs.res0 72
scoreboard players set @s[scores={bs.var1=958..963}] bs.res0 73
scoreboard players set @s[scores={bs.var1=963..968}] bs.res0 74
scoreboard players set @s[scores={bs.var1=968..972}] bs.res0 75
scoreboard players set @s[scores={bs.var1=972..976}] bs.res0 76
scoreboard players set @s[scores={bs.var1=976..979}] bs.res0 77
scoreboard players set @s[scores={bs.var1=980..983}] bs.res0 78
scoreboard players set @s[scores={bs.var1=983..986}] bs.res0 79
scoreboard players set @s[scores={bs.var1=986..988}] bs.res0 81
scoreboard players set @s[scores={bs.var1=989..991}] bs.res0 82
scoreboard players set @s[scores={bs.var1=991..993}] bs.res0 83
scoreboard players set @s[scores={bs.var1=993..995}] bs.res0 84
scoreboard players set @s[scores={bs.var1=995..996}] bs.res0 85
scoreboard players set @s[scores={bs.var1=996..998}] bs.res0 86
scoreboard players set @s[scores={bs.var1=998..999}] bs.res0 87
scoreboard players set @s[scores={bs.var1=999}] bs.res0 88
scoreboard players set @s[scores={bs.var1=999}] bs.res0 89
scoreboard players set @s[scores={bs.var1=999..1000}] bs.res0 90

scoreboard players operation @s[scores={bs.var0=..-1}] bs.res0 *= -1 bs.const
