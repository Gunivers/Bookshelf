execute unless score #xp.use_macro bs.data matches 1 store success score #xp.storage_changed bs.data run data modify storage bs:data xp.set_points.check set from storage bs:in xp.set_points.points
execute unless score #xp.use_macro bs.data matches 1 unless score #xp.storage_changed bs.data matches 1 store result storage bs:in xp.set_points.points int 1 run scoreboard players get $xp.set_points.points bs.in
execute unless score #xp.use_macro bs.data matches 1 run function bs.xp:set/points/macro with storage bs:in xp.set_points
scoreboard players reset #xp.use_macro bs.data
