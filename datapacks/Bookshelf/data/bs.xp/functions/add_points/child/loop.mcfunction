xp add @s 131072 points
scoreboard players remove POINTS bs 131072
execute if score POINTS bs matches 131072.. run function bs.xp:add_points/child/loop