# level 1111129 => max_points = 10000003
execute store result storage bs:data xp.get_progress.levels int 1 run xp query @s levels
xp set @s 1111129 levels
execute store result score $xp.get_progress bs.out run xp query @s points
function #bs.xp:set_levels with storage bs:data xp.get_progress

execute store result storage bs:out xp.get_progress int 1 run return run scoreboard players operation $xp.get_progress bs.out /= 100 bs.const
