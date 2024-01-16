# level^2 + 6 × level (at levels 0–16)
scoreboard players operation #xp.get_total_points.x bs.data *= 6 bs.const
scoreboard players operation #xp.get_total_points.x2 bs.data *= #xp.get_total_points.x2 bs.data
scoreboard players operation $xp.get_total_points bs.out += #xp.get_total_points.x bs.data
return run scoreboard players operation $xp.get_total_points bs.out += #xp.get_total_points.x2 bs.data
