execute if score #xp.add_levels.use_macro bs.data matches 1 run return run scoreboard players reset #xp.add_levels.use_macro bs.data

execute store success score #xp.add_levels.storage_changed bs.data run data modify storage bs:data xp.add_levels.levels set from storage bs:in xp.add_levels.levels
execute unless score #xp.add_levels.storage_changed bs.data matches 1 store result storage bs:in xp.add_levels.levels int 1 run scoreboard players get $xp.add_levels.levels bs.in
execute run function bs.xp:add/levels/macro with storage bs:in xp.add_levels

return run scoreboard players reset #xp.add_levels.use_macro bs.data
