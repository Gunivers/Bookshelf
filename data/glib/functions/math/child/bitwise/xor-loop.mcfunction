scoreboard players operation @s glib.var3 = @s glib.var0
scoreboard players operation @s glib.var4 = @s glib.var1
scoreboard players operation @s glib.var3 %= 2 glib.const
scoreboard players operation @s glib.var4 %= 2 glib.const

execute unless score @s glib.var4 matches 1 if score @s glib.var3 matches 1 run scoreboard players operation @s glib.res0 += @s glib.var2
execute unless score @s glib.var3 matches 1 if score @s glib.var4 matches 1 run scoreboard players operation @s glib.res0 += @s glib.var2

scoreboard players operation @s glib.var0 /= 2 glib.const
scoreboard players operation @s glib.var1 /= 2 glib.const
scoreboard players operation @s glib.var2 *= 2 glib.const

execute unless score @s glib.var1 matches ..0 run function glib:math/child/bitwise/xor-loop