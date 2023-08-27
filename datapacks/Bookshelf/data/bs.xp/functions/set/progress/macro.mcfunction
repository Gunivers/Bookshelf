scoreboard players set #xp.set_progress.use_macro bs.data 1
execute store result storage bs:data xp.set_progress.levels int 1 run xp query @s levels
# level 1111129 => max_points = 10000003
xp set @s 1111129 levels
$xp set @s $(points)00 points
function #bs.xp:set_levels with storage bs:data xp.set_progress
