xp add @s 131072 levels
scoreboard players remove LEVELS bs 131072
execute if score LEVELS bs matches 131072.. run function bs.xp:add_levels/child/loop