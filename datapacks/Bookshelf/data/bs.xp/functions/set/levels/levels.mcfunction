execute if score #xp.set_levels.use_macro bs.data matches 1 run return run scoreboard players reset #xp.set_levels.use_macro bs.data

execute store success score #xp.set_levels.storage_changed bs.data run data modify storage bs:data xp.set_levels.levels set from storage bs:in xp.set_levels.levels
execute unless score #xp.set_levels.storage_changed bs.data matches 1 store result storage bs:in xp.set_levels.levels int 1 run scoreboard players get $xp.set_levels.levels bs.in
execute run function bs.xp:set/levels/macro with storage bs:in xp.set_levels

return run scoreboard players reset #xp.set_levels.use_macro bs.data
