# level^2 + 6 × level (at levels 0–16)

scoreboard players operation #xp.get_total_points.x bs.data *= 6 bs.const
scoreboard players operation #xp.get_total_points.x2 bs.data *= #xp.get_total_points.x2 bs.data

scoreboard players operation #xp.get_total_points.result bs.data += #xp.get_total_points.x bs.data
scoreboard players operation #xp.get_total_points.result bs.data += #xp.get_total_points.x2 bs.data
