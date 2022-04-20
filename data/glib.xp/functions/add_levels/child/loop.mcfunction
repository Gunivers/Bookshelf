xp add @s 131072 levels
scoreboard players remove LEVELS glib 131072
execute if score LEVELS glib matches 131072.. run function glib.xp:add_levels/child/loop