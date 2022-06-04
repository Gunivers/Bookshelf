# For level 31 to 40, XP IN LEVEL =  9*LEVEL + 112
#                                    ^^^^^^^^^^^^^

scoreboard players operation @s glib.res0 = @s glib.var0
scoreboard players operation @s glib.res0 -= 30 glib.const
scoreboard players operation @s glib.res0 *= 9 glib.const
scoreboard players operation @s glib.res0 += 112 glib.const