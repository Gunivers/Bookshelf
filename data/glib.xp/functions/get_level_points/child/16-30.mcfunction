# For level 16 to 30, XP IN LEVEL =  5*LEVEL + 37
#                                    ^^^^^^^^^^^^

scoreboard players operation @s glib.res0 = @s glib.var0
scoreboard players operation @s glib.res0 -= 15 glib.const
scoreboard players operation @s glib.res0 *= 5 glib.const
scoreboard players operation @s glib.res0 += 37 glib.const