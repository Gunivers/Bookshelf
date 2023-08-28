execute unless score #xp.use_macro bs.data matches 1 store success score #xp.storage_changed bs.data run data modify storage bs:data xp.set_progress.check set from storage bs:in xp.set_progress.points
execute unless score #xp.use_macro bs.data matches 1 unless score #xp.storage_changed bs.data matches 1 store result storage bs:in xp.set_progress.points int 1 run scoreboard players get $xp.set_progress.points bs.in
execute unless score #xp.use_macro bs.data matches 1 run function bs.xp:set/progress/macro with storage bs:in xp.set_progress
scoreboard players reset #xp.use_macro bs.data
