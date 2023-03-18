#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Luludatra
# Contributors: KubbyDev
# MC Version: 1.13
# Last check:

# Original path: bs.math:arcsin
# Documentation: https://bs-core.readthedocs.io//math
# Parallelizable: true
# Note:
# - This function returns asin(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

# Input: @s bs.in.0 (score): scalar on interval [-1000;1000]
# Output: @s bs.out.0 (score): angle on interval [-90;90]

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.in.1 = @s bs.in.0
scoreboard players operation @s[scores={bs.in.1=..-1}] bs.in.1 *= -1 bs.const

scoreboard players set @s[scores={bs.in.1=0..8}] bs.out.0 0
scoreboard players set @s[scores={bs.in.1=8..26}] bs.out.0 1
scoreboard players set @s[scores={bs.in.1=26..43}] bs.out.0 2
scoreboard players set @s[scores={bs.in.1=43..61}] bs.out.0 3
scoreboard players set @s[scores={bs.in.1=61..78}] bs.out.0 4
scoreboard players set @s[scores={bs.in.1=78..95}] bs.out.0 5
scoreboard players set @s[scores={bs.in.1=95..113}] bs.out.0 6
scoreboard players set @s[scores={bs.in.1=113..130}] bs.out.0 7
scoreboard players set @s[scores={bs.in.1=130..156}] bs.out.0 8
scoreboard players set @s[scores={bs.in.1=156..182}] bs.out.0 9
scoreboard players set @s[scores={bs.in.1=182..199}] bs.out.0 10
scoreboard players set @s[scores={bs.in.1=199..216}] bs.out.0 11
scoreboard players set @s[scores={bs.in.1=216..233}] bs.out.0 12
scoreboard players set @s[scores={bs.in.1=233..250}] bs.out.0 13
scoreboard players set @s[scores={bs.in.1=250..267}] bs.out.0 14
scoreboard players set @s[scores={bs.in.1=267..284}] bs.out.0 15
scoreboard players set @s[scores={bs.in.1=284..300}] bs.out.0 16
scoreboard players set @s[scores={bs.in.1=300..317}] bs.out.0 17
scoreboard players set @s[scores={bs.in.1=317..333}] bs.out.0 18
scoreboard players set @s[scores={bs.in.1=333..350}] bs.out.0 19
scoreboard players set @s[scores={bs.in.1=350..366}] bs.out.0 20
scoreboard players set @s[scores={bs.in.1=366..382}] bs.out.0 21
scoreboard players set @s[scores={bs.in.1=382..398}] bs.out.0 22
scoreboard players set @s[scores={bs.in.1=398..414}] bs.out.0 23
scoreboard players set @s[scores={bs.in.1=414..430}] bs.out.0 24
scoreboard players set @s[scores={bs.in.1=430..446}] bs.out.0 25
scoreboard players set @s[scores={bs.in.1=446..461}] bs.out.0 26
scoreboard players set @s[scores={bs.in.1=461..477}] bs.out.0 27
scoreboard players set @s[scores={bs.in.1=477..492}] bs.out.0 28
scoreboard players set @s[scores={bs.in.1=492..507}] bs.out.0 29
scoreboard players set @s[scores={bs.in.1=507..522}] bs.out.0 30
scoreboard players set @s[scores={bs.in.1=522..537}] bs.out.0 31
scoreboard players set @s[scores={bs.in.1=537..551}] bs.out.0 32
scoreboard players set @s[scores={bs.in.1=552..566}] bs.out.0 33
scoreboard players set @s[scores={bs.in.1=566..580}] bs.out.0 34
scoreboard players set @s[scores={bs.in.1=580..594}] bs.out.0 35
scoreboard players set @s[scores={bs.in.1=594..608}] bs.out.0 36
scoreboard players set @s[scores={bs.in.1=608..622}] bs.out.0 37
scoreboard players set @s[scores={bs.in.1=622..636}] bs.out.0 38
scoreboard players set @s[scores={bs.in.1=636..649}] bs.out.0 39
scoreboard players set @s[scores={bs.in.1=649..662}] bs.out.0 40
scoreboard players set @s[scores={bs.in.1=662..675}] bs.out.0 41
scoreboard players set @s[scores={bs.in.1=675..688}] bs.out.0 42
scoreboard players set @s[scores={bs.in.1=688..700}] bs.out.0 43
scoreboard players set @s[scores={bs.in.1=701..713}] bs.out.0 44
scoreboard players set @s[scores={bs.in.1=713..725}] bs.out.0 45
scoreboard players set @s[scores={bs.in.1=725..737}] bs.out.0 46
scoreboard players set @s[scores={bs.in.1=737..748}] bs.out.0 47
scoreboard players set @s[scores={bs.in.1=749..760}] bs.out.0 48
scoreboard players set @s[scores={bs.in.1=760..771}] bs.out.0 49
scoreboard players set @s[scores={bs.in.1=771..782}] bs.out.0 50
scoreboard players set @s[scores={bs.in.1=782..793}] bs.out.0 51
scoreboard players set @s[scores={bs.in.1=793..803}] bs.out.0 52
scoreboard players set @s[scores={bs.in.1=803..814}] bs.out.0 53
scoreboard players set @s[scores={bs.in.1=814..824}] bs.out.0 54
scoreboard players set @s[scores={bs.in.1=824..833}] bs.out.0 55
scoreboard players set @s[scores={bs.in.1=833..843}] bs.out.0 56
scoreboard players set @s[scores={bs.in.1=843..852}] bs.out.0 57
scoreboard players set @s[scores={bs.in.1=852..861}] bs.out.0 58
scoreboard players set @s[scores={bs.in.1=861..870}] bs.out.0 59
scoreboard players set @s[scores={bs.in.1=870..878}] bs.out.0 60
scoreboard players set @s[scores={bs.in.1=878..887}] bs.out.0 61
scoreboard players set @s[scores={bs.in.1=887..894}] bs.out.0 62
scoreboard players set @s[scores={bs.in.1=895..902}] bs.out.0 63
scoreboard players set @s[scores={bs.in.1=902..909}] bs.out.0 64
scoreboard players set @s[scores={bs.in.1=910..917}] bs.out.0 65
scoreboard players set @s[scores={bs.in.1=917..923}] bs.out.0 66
scoreboard players set @s[scores={bs.in.1=923..930}] bs.out.0 67
scoreboard players set @s[scores={bs.in.1=930..936}] bs.out.0 68
scoreboard players set @s[scores={bs.in.1=936..942}] bs.out.0 69
scoreboard players set @s[scores={bs.in.1=942..948}] bs.out.0 70
scoreboard players set @s[scores={bs.in.1=948..953}] bs.out.0 71
scoreboard players set @s[scores={bs.in.1=953..958}] bs.out.0 72
scoreboard players set @s[scores={bs.in.1=958..963}] bs.out.0 73
scoreboard players set @s[scores={bs.in.1=963..968}] bs.out.0 74
scoreboard players set @s[scores={bs.in.1=968..972}] bs.out.0 75
scoreboard players set @s[scores={bs.in.1=972..976}] bs.out.0 76
scoreboard players set @s[scores={bs.in.1=976..979}] bs.out.0 77
scoreboard players set @s[scores={bs.in.1=980..983}] bs.out.0 78
scoreboard players set @s[scores={bs.in.1=983..986}] bs.out.0 79
scoreboard players set @s[scores={bs.in.1=986..988}] bs.out.0 81
scoreboard players set @s[scores={bs.in.1=989..991}] bs.out.0 82
scoreboard players set @s[scores={bs.in.1=991..993}] bs.out.0 83
scoreboard players set @s[scores={bs.in.1=993..995}] bs.out.0 84
scoreboard players set @s[scores={bs.in.1=995..996}] bs.out.0 85
scoreboard players set @s[scores={bs.in.1=996..998}] bs.out.0 86
scoreboard players set @s[scores={bs.in.1=998..999}] bs.out.0 87
scoreboard players set @s[scores={bs.in.1=999}] bs.out.0 88
scoreboard players set @s[scores={bs.in.1=999}] bs.out.0 89
scoreboard players set @s[scores={bs.in.1=999..1000}] bs.out.0 90

scoreboard players operation @s[scores={bs.in.0=..-1}] bs.out.0 *= -1 bs.const
