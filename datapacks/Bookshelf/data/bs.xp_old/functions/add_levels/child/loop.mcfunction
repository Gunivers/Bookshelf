xp add @s 131072 levels
scoreboard players remove #xp.levels bs.data 131072
execute if score #xp.levels bs.data matches 131072.. run function bs.xp:add_levels/child/loop