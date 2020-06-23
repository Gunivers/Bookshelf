scoreboard players operation @s glib.var3 = @s glib.res
scoreboard players operation @s glib.var3 *= @s glib.res
scoreboard players operation @s glib.var2 /= 2 glib.const

#tellraw @s ["",{"text":"----------\nInput: "},{"score":{"name":"@s","objective":"glib.var"}},{"text":"\nPow2: "},{"score":{"name":"@s","objective":"glib.var2"}},{"text":"\nRes²: "},{"score":{"name":"@s","objective":"glib.var3"}},{"text":"\nRes: "},{"score":{"name":"@s","objective":"Res"}}]

execute if score @s glib.var3 > @s glib.var run scoreboard players operation @s glib.res -= @s glib.var2
execute if score @s glib.var3 < @s glib.var run scoreboard players operation @s glib.res += @s glib.var2

execute if entity @s[scores={glib.var2=2..}] unless score @s glib.var3 = @s glib.var run function glib:math/child/sqrt_loop
