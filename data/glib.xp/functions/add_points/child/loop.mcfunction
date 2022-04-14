xp add @s 1024 points
scoreboard players remove POINTS glib 1024
execute if score POINTS glib matches 1024.. run function glib.xp:add_points/child/loop