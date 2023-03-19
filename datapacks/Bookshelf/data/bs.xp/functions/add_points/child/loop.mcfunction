xp add @s 131072 points
scoreboard players remove #xp.points bs.data 131072
execute if score #xp.points bs.data matches 131072.. run function bs.xp:add_points/child/loop