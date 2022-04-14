xp add @s 128 levels
scoreboard players remove LEVELS glib 128
execute if score LEVELS glib matches 128.. run function glib.xp:add_levels/child/loop