execute store result score #xp.remove_levels.levels bs.data run xp query @s levels
scoreboard players operation #xp.remove_levels.levels bs.data -= $xp.remove_levels.levels bs.in

execute store result storage bs:data xp.remove_levels.levels int 1 run xp query @s levels
