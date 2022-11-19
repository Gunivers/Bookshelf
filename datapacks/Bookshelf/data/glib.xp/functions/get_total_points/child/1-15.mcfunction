# For level 1 to 15, XP =  REST + 6*LEVEL + LEVEL^2
#                                 ^^^^^^^^^^^^^^^^^

scoreboard players operation TMP glib = LEVELS glib
scoreboard players operation TMP glib *= 6 bs.const
scoreboard players operation @s bs.res0 += TMP glib

scoreboard players operation TMP glib = LEVELS glib
scoreboard players operation TMP glib *= LEVELS glib
scoreboard players operation @s bs.res0 += TMP glib