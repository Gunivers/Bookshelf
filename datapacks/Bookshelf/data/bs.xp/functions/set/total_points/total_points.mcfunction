execute if score #xp.set_total_points.use_macro bs.data matches 1 run return run scoreboard players reset #xp.set_total_points.use_macro bs.data

execute store success score #xp.set_total_points.storage_changed bs.data run data modify storage bs:data xp.set_total_points.points set from storage bs:in xp.set_total_points.points
execute unless score #xp.set_total_points.storage_changed bs.data matches 1 store result storage bs:in xp.set_total_points.points int 1 run scoreboard players get $xp.set_total_points.points bs.in
execute run function bs.xp:set/progress/macro with storage bs:in xp.set_total_points

return run scoreboard players reset #xp.set_total_points.use_macro bs.data
