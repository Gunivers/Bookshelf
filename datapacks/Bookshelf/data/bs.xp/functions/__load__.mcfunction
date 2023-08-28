# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.in dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 2 bs.const 2
scoreboard players set 5 bs.const 5
scoreboard players set 6 bs.const 6
scoreboard players set 9 bs.const 9
scoreboard players set 81 bs.const 81
scoreboard players set 325 bs.const 325

scoreboard players add $xp.add_levels.levels bs.in 0
scoreboard players add $xp.add_points.points bs.in 0
scoreboard players add $xp.add_progress.points bs.in 0

scoreboard players add $xp.remove_levels.levels bs.in 0
scoreboard players add $xp.remove_points.points bs.in 0
scoreboard players add $xp.remove_progress.points bs.in 0

scoreboard players add $xp.set_levels.levels bs.in 0
scoreboard players add $xp.set_points.points bs.in 0
scoreboard players add $xp.set_progress.points bs.in 0
scoreboard players add $xp.set_total_points.points bs.in 0

execute unless data storage bs:in xp.add_levels.levels run data modify storage bs:in xp.add_levels.levels set value 0
execute unless data storage bs:in xp.add_points.points run data modify storage bs:in xp.add_points.points set value 0
execute unless data storage bs:in xp.add_progress.points run data modify storage bs:in xp.add_progress.points set value 0

execute unless data storage bs:in xp.remove_levels.levels run data modify storage bs:in xp.remove_levels.levels set value 0
execute unless data storage bs:in xp.remove_points.points run data modify storage bs:in xp.remove_points.points set value 0
execute unless data storage bs:in xp.remove_progress.points run data modify storage bs:in xp.remove_progress.points set value 0

execute unless data storage bs:in xp.set_levels.levels run data modify storage bs:in xp.set_levels.levels set value 0
execute unless data storage bs:in xp.set_points.points run data modify storage bs:in xp.set_points.points set value 0
execute unless data storage bs:in xp.set_progress.points run data modify storage bs:in xp.set_progress.points set value 0
execute unless data storage bs:in xp.set_total_points.points run data modify storage bs:in xp.set_total_points.points set value 0

execute unless data storage bs:data xp.add_levels.check run data modify storage bs:data xp.add_levels.check set value 0
execute unless data storage bs:data xp.add_points.check run data modify storage bs:data xp.add_points.check set value 0
execute unless data storage bs:data xp.add_progress.check run data modify storage bs:data xp.add_progress.check set value 0

execute unless data storage bs:data xp.remove_levels.check run data modify storage bs:data xp.remove_levels.check set value 0
execute unless data storage bs:data xp.remove_points.check run data modify storage bs:data xp.remove_points.check set value 0
execute unless data storage bs:data xp.remove_progress.check run data modify storage bs:data xp.remove_progress.check set value 0

execute unless data storage bs:data xp.set_levels.check run data modify storage bs:data xp.set_levels.check set value 0
execute unless data storage bs:data xp.set_points.check run data modify storage bs:data xp.set_points.check set value 0
execute unless data storage bs:data xp.set_progress.check run data modify storage bs:data xp.set_progress.check set value 0
execute unless data storage bs:data xp.set_total_points.check run data modify storage bs:data xp.set_total_points.check set value 0
