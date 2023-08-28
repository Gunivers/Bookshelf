execute store result score #xp.remove_progress.points bs.data run function #bs.xp:get_progress
execute store success score #xp.storage_changed bs.data run data modify storage bs:data xp.remove_progress.check set from storage bs:in xp.remove_progress.points
execute if score #xp.storage_changed bs.data matches 1 store result score $xp.remove_progress.points bs.in run data get storage bs:in xp.remove_progress.points
execute store result storage bs:data xp.remove_progress.points int 1 run scoreboard players operation #xp.remove_progress.points bs.data -= $xp.remove_progress.points bs.in
function bs.xp:set/progress/macro with storage bs:data xp.remove_progress
scoreboard players reset #xp.use_macro bs.data
