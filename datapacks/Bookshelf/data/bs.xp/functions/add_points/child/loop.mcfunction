xp add @s 131072 points
scoreboard players remove POINTS glib 131072
execute if score POINTS glib matches 131072.. run function bs.xp:add_points/child/loop