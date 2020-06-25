scoreboard players operation @s glib.var2 = @s glib.res0
scoreboard players operation @s glib.var2 *= @s glib.res0
scoreboard players operation @s glib.var1 /= 2 glib.const

#tellraw @s ["",{"text":"----------\nInput: "},{"score":{"name":"@s","objective":"glib.var0"}},{"text":"\nPow2: "},{"score":{"name":"@s","objective":"glib.var1"}},{"text":"\nRes²: "},{"score":{"name":"@s","objective":"glib.var2"}},{"text":"\nRes: "},{"score":{"name":"@s","objective":"Res"}}]

execute if score @s glib.var2 > @s glib.var0 run scoreboard players operation @s glib.res0 -= @s glib.var1
execute if score @s glib.var2 < @s glib.var0 run scoreboard players operation @s glib.res0 += @s glib.var1

execute if entity @s[scores={glib.var1=2..}] unless score @s glib.var2 = @s glib.var0 run function glib:math/child/sqrt_loop
