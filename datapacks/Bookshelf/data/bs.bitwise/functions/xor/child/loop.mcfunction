scoreboard players operation @s bs.var3 = @s bs.var0
scoreboard players operation @s bs.var4 = @s bs.var1
scoreboard players operation @s bs.var3 %= 2 bs.const
scoreboard players operation @s bs.var4 %= 2 bs.const

execute unless score @s bs.var4 matches 1 if score @s bs.var3 matches 1 run scoreboard players operation @s bs.res0 += @s bs.var2
execute unless score @s bs.var3 matches 1 if score @s bs.var4 matches 1 run scoreboard players operation @s bs.res0 += @s bs.var2

scoreboard players operation @s bs.var0 /= 2 bs.const
scoreboard players operation @s bs.var1 /= 2 bs.const
scoreboard players operation @s bs.var2 *= 2 bs.const

execute unless score @s bs.var1 matches ..0 run function bs.bitwise:xor/child/loop