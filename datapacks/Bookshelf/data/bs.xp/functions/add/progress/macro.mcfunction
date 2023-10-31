# level 1111129 => max_points = 10000003
execute store result storage bs:_ levels int 1 run xp query @s levels
xp set @s 1111129 levels
execute store result score #xp.add_progress.points bs.data run xp query @s points
$scoreboard players set #xp.add_progress.progress bs.data $(progress)00
scoreboard players operation #xp.add_progress.points bs.data += #xp.add_progress.progress bs.data
$execute if score #xp.add_progress.points bs.data matches 1..10000001 run xp add @s $(progress)00 points
execute if score #xp.add_progress.points bs.data matches ..0 run xp set @s 0 points
execute if score #xp.add_progress.points bs.data matches 10000002.. run xp set @s 10000002 points
function bs.xp:set/levels/macro with storage bs:_
