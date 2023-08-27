execute if score #xp.add_points.use_macro bs.data matches 1 run return run scoreboard players reset #xp.add_points.use_macro bs.data

execute store success score #xp.add_points.storage_changed bs.data run data modify storage bs:data xp.add_points.points set from storage bs:in xp.add_points.points
execute unless score #xp.add_points.storage_changed bs.data matches 1 store result storage bs:in xp.add_points.points int 1 run scoreboard players get $xp.add_points.pointspoints bs.in
execute run function bs.xp:add/points/macro with storage bs:in xp.add_points

return run scoreboard players reset #xp.add_points.use_macro bs.data
