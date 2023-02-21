scoreboard players operation @s bs.in.3 = @s bs.in.0
scoreboard players operation @s bs.in.4 = @s bs.in.1
scoreboard players operation @s bs.in.3 %= 2 bs.const
scoreboard players operation @s bs.in.4 %= 2 bs.const

execute if score @s bs.in.3 matches 1 run scoreboard players operation @s bs.out.0 += @s bs.in.2
execute unless score @s bs.in.3 matches 1 if score @s bs.in.4 matches 1 run scoreboard players operation @s bs.out.0 += @s bs.in.2

scoreboard players operation @s bs.in.0 /= 2 bs.const
scoreboard players operation @s bs.in.1 /= 2 bs.const
scoreboard players operation @s bs.in.2 *= 2 bs.const

execute unless score @s bs.in.1 matches ..0 run function bs.bitwise:or/child/loop