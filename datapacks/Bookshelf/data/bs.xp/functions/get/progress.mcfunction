execute store result storage bs:data xp.get_progress.levels int 1 run xp query @s levels
# level 1111129 => max_points = 10000003
xp set @s 1111129 levels
execute store result score #xp.get_progress.points bs.data run xp query @s points
function #bs.xp:set_levels with storage bs:data xp.get_progress

return run scoreboard players operation #xp.get_progress.points bs.data /= 100 bs.const
