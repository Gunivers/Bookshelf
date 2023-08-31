# level 1111129 => max_points = 10000003
execute store result storage bs:data xp.set_progress.levels int 1 run xp query @s levels
xp set @s 1111129 levels
$xp set @s $(progress)00 points
function bs.xp:set/levels/macro with storage bs:data xp.set_progress
