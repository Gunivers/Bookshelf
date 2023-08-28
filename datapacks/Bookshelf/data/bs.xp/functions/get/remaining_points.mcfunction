execute store result score $xp.get_remaining_points bs.out run function #bs.xp:get_max_points
execute store result score #xp.get_remaining_points.points bs.data run xp query @s points

execute store result storage bs:out xp.get_remaining_points int 1 run return run scoreboard players operation $xp.get_remaining_points bs.out -= #xp.get_remaining_points.points bs.data
