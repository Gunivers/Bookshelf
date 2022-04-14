# For level 16 to 30, XP =  REST +  1/2 * (5*LEVEL^2 + 59*LEVEL + 566)
#                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

scoreboard players remove LEVELS glib 14

scoreboard players operation @s glib.xp += 283 glib.const

scoreboard players operation TMP glib = LEVELS glib
scoreboard players operation TMP glib *= 59 glib.const

scoreboard players operation TMP2 glib = LEVELS glib
scoreboard players operation TMP2 glib *= LEVELS glib
scoreboard players operation TMP2 glib *= 5 glib.const

scoreboard players operation TMP glib += TMP2 glib
scoreboard players operation TMP glib /= 2 glib.const

scoreboard players operation @s glib.xp += TMP glib