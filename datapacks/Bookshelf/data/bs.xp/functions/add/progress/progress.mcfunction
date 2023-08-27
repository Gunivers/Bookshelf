execute if score #xp.add_progress.use_macro bs.data matches 1 run return run scoreboard players reset #xp.add_progress.use_macro bs.data

execute store success score #xp.add_progress.storage_changed bs.data run data modify storage bs:data xp.add_progress.points set from storage bs:in xp.add_progress.points
execute unless score #xp.add_progress.storage_changed bs.data matches 1 store result storage bs:in xp.add_progress.points int 1 run scoreboard players get $xp.add_progress.points bs.in
execute run function bs.xp:add/progress/macro with storage bs:in xp.add_progress

return run scoreboard players reset #xp.add_progress.use_macro bs.data
