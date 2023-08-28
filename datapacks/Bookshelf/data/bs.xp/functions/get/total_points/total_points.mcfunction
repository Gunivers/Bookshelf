execute store result score $xp.get_total_points bs.out run xp query @s points
execute store result score #xp.get_total_points.levels bs.data \
  store result score #xp.get_total_points.x bs.data \
  store result score #xp.get_total_points.x2 bs.data \
  run xp query @s levels

execute if score #xp.get_total_points.levels bs.data matches 1..16 run function bs.xp:get/total_points/1..16
execute if score #xp.get_total_points.levels bs.data matches 17..31 run function bs.xp:get/total_points/17..31
execute if score #xp.get_total_points.levels bs.data matches 32.. run function bs.xp:get/total_points/32..

execute store result storage bs:out xp.get_total_points int 1 run return run scoreboard players get $xp.get_total_points bs.out
