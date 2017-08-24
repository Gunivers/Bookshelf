
# SYSTEME PLACEMENT DE Z
# Placement de l'entité sur l'axe X en fonction du score pla_cos
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add Tmp dummy
scoreboard objectives add Constant dummy

scoreboard players set -1 Constant -1

# ---------------------------------------------------------------------------------------

scoreboard players tag @s[tag=pla_zP] remove pla_zP
scoreboard players tag @s[tag=pla_zN] remove pla_zN

scoreboard players operation @s Tmp = @s pla_cos
scoreboard players tag @s[score_Tmp_min=0] add pla_zP
scoreboard players tag @s[score_Tmp=-1] add pla_zN

scoreboard players operation @s[score_Tmp=0] Tmp *= -1 Constant


tp @s[score_Tmp_min=160000000,tag=pla_zP] ~ ~ ~16
tp @s[score_Tmp_min=160000000,tag=pla_zN] ~ ~ ~-16
scoreboard players remove @s[score_Tmp_min=160000000] Tmp 160000000
tp @s[score_Tmp_min=80000000,tag=pla_zP] ~ ~ ~8
tp @s[score_Tmp_min=80000000,tag=pla_zN] ~ ~ ~-8
scoreboard players remove @s[score_Tmp_min=80000000] Tmp 80000000
tp @s[score_Tmp_min=40000000,tag=pla_zP] ~ ~ ~4
tp @s[score_Tmp_min=40000000,tag=pla_zN] ~ ~ ~-4
scoreboard players remove @s[score_Tmp_min=40000000] Tmp 40000000
tp @s[score_Tmp_min=20000000,tag=pla_zP] ~ ~ ~2
tp @s[score_Tmp_min=20000000,tag=pla_zN] ~ ~ ~-2
scoreboard players remove @s[score_Tmp_min=20000000] Tmp 20000000
tp @s[score_Tmp_min=10000000,tag=pla_zP] ~ ~ ~1
tp @s[score_Tmp_min=10000000,tag=pla_zN] ~ ~ ~-1
scoreboard players remove @s[score_Tmp_min=10000000] Tmp 10000000
tp @s[score_Tmp_min=5000000,tag=pla_zP] ~ ~ ~0.5
tp @s[score_Tmp_min=5000000,tag=pla_zN] ~ ~ ~-0.5
scoreboard players remove @s[score_Tmp_min=5000000] Tmp 5000000
tp @s[score_Tmp_min=2500000,tag=pla_zP] ~ ~ ~0.25
tp @s[score_Tmp_min=2500000,tag=pla_zN] ~ ~ ~-0.25
scoreboard players remove @s[score_Tmp_min=2500000] Tmp 2500000
tp @s[score_Tmp_min=1250000,tag=pla_zP] ~ ~ ~0.125
tp @s[score_Tmp_min=1250000,tag=pla_zN] ~ ~ ~-0.125
scoreboard players remove @s[score_Tmp_min=1250000] Tmp 1250000
tp @s[score_Tmp_min=625000,tag=pla_zP] ~ ~ ~0.0625
tp @s[score_Tmp_min=625000,tag=pla_zN] ~ ~ ~-0.0625
scoreboard players remove @s[score_Tmp_min=625000] Tmp 625000
tp @s[score_Tmp_min=312500,tag=pla_zP] ~ ~ ~0.03125
tp @s[score_Tmp_min=312500,tag=pla_zN] ~ ~ ~-0.03125
scoreboard players remove @s[score_Tmp_min=312500] Tmp 312500
tp @s[score_Tmp_min=156250,tag=pla_zP] ~ ~ ~0.015625
tp @s[score_Tmp_min=156250,tag=pla_zN] ~ ~ ~-0.015625
scoreboard players remove @s[score_Tmp_min=156250] Tmp 156250
tp @s[score_Tmp_min=78125,tag=pla_zP] ~ ~ ~0.0078125
tp @s[score_Tmp_min=78125,tag=pla_zN] ~ ~ ~-0.0078125
scoreboard players remove @s[score_Tmp_min=78125] Tmp 78125
tp @s[score_Tmp_min=39062,tag=pla_zP] ~ ~ ~0.0039062
tp @s[score_Tmp_min=39062,tag=pla_zN] ~ ~ ~-0.0039062
scoreboard players remove @s[score_Tmp_min=39062] Tmp 39062
tp @s[score_Tmp_min=19531,tag=pla_zP] ~ ~ ~0.0019531
tp @s[score_Tmp_min=19531,tag=pla_zN] ~ ~ ~-0.0019531
scoreboard players remove @s[score_Tmp_min=19531] Tmp 19531
tp @s[score_Tmp_min=9765,tag=pla_zP] ~ ~ ~0.0009765
tp @s[score_Tmp_min=9765,tag=pla_zN] ~ ~ ~-0.0009765
scoreboard players remove @s[score_Tmp_min=9765] Tmp 9765

























