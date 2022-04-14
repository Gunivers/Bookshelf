# For level 17 to 31, XP =  REST +  1/2 * (9*LEVEL^2 + 197*LEVEL + 2584)
#                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

scoreboard players remove LEVELS glib 29

scoreboard players operation @s glib.xp += 1292 glib.const

scoreboard players operation TMP glib = LEVELS glib
scoreboard players operation TMP glib *= 197 glib.const

scoreboard players operation TMP2 glib = LEVELS glib
scoreboard players operation TMP2 glib *= LEVELS glib
scoreboard players operation TMP2 glib *= 9 glib.const

scoreboard players operation TMP glib += TMP2 glib
scoreboard players operation TMP glib /= 2 glib.const

scoreboard players operation @s glib.xp += TMP glib