# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.in dummy [{"text":"BS ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.out dummy [{"text":"BS ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 2 bs.const 2
scoreboard players set 5 bs.const 5
scoreboard players set 6 bs.const 6
scoreboard players set 9 bs.const 9
scoreboard players set 81 bs.const 81
scoreboard players set 100 bs.const 100
scoreboard players set 325 bs.const 325

scoreboard players add $xp.add_levels.levels bs.in 0
scoreboard players add $xp.add_points.points bs.in 0
scoreboard players add $xp.add_progress.progress bs.in 0

scoreboard players add $xp.set_levels.levels bs.in 0
scoreboard players add $xp.set_points.points bs.in 0
scoreboard players add $xp.set_progress.progress bs.in 0
scoreboard players add $xp.set_total_points.points bs.in 0

scoreboard players add #xp.add_levels.check bs.data 0
scoreboard players add #xp.add_points.check bs.data 0
scoreboard players add #xp.add_progress.check bs.data 0

scoreboard players add #xp.set_levels.check bs.data 0
scoreboard players add #xp.set_points.check bs.data 0
scoreboard players add #xp.set_progress.check bs.data 0
scoreboard players add #xp.set_total_points.check bs.data 0

execute unless data storage bs:in xp.add_levels.levels run data modify storage bs:in xp.add_levels.levels set value 0
execute unless data storage bs:in xp.add_points.points run data modify storage bs:in xp.add_points.points set value 0
execute unless data storage bs:in xp.add_progress.points run data modify storage bs:in xp.add_progress.points set value 0

execute unless data storage bs:in xp.set_levels.levels run data modify storage bs:in xp.set_levels.levels set value 0
execute unless data storage bs:in xp.set_points.points run data modify storage bs:in xp.set_points.points set value 0
execute unless data storage bs:in xp.set_progress.points run data modify storage bs:in xp.set_progress.points set value 0
execute unless data storage bs:in xp.set_total_points.points run data modify storage bs:in xp.set_total_points.points set value 0
