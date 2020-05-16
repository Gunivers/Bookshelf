scoreboard players operation @s Var3 = @s Res1
scoreboard players operation @s Var3 *= @s Res1
scoreboard players operation @s Var2 /= 2 Constant

#tellraw @s ["",{"text":"----------\nInput: "},{"score":{"name":"@s","objective":"Var1"}},{"text":"\nPow2: "},{"score":{"name":"@s","objective":"Var2"}},{"text":"\nRes²: "},{"score":{"name":"@s","objective":"Var3"}},{"text":"\nRes: "},{"score":{"name":"@s","objective":"Res"}}]

execute if score @s Var3 > @s Var1 run scoreboard players operation @s Res1 -= @s Var2
execute if score @s Var3 < @s Var1 run scoreboard players operation @s Res1 += @s Var2

execute if entity @s[scores={Var2=2..}] unless score @s Var3 = @s Var1 run function glib:math/child/sqrt_loop
