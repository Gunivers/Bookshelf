execute store result score #xp.remove_points.points bs.data run function #bs.xp:get_total_points
execute store success score #xp.storage_changed bs.data run data modify storage bs:data xp.remove_points.check set from storage bs:in xp.remove_points.points
execute if score #xp.storage_changed bs.data matches 1 store result score $xp.remove_points.points bs.in run data get storage bs:in xp.remove_points.points
execute store result storage bs:data xp.remove_points.points int 1 run scoreboard players operation #xp.remove_points.points bs.data -= $xp.remove_points.points bs.in
function bs.xp:set/total_points/macro with storage bs:data xp.remove_points
scoreboard players reset #xp.use_macro bs.data
