execute store result score #xp.get_remaining_points.max bs.data run function #bs.xp:get_max_points
execute store result score #xp.get_remaining_points.points bs.data run xp query @s points

return run scoreboard players operation #xp.get_remaining_points.max bs.data -= #xp.get_remaining_points.points bs.data
