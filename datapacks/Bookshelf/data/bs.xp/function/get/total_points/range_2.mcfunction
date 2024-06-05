# 2.5 × level^2 – 40.5 × level + 360 (at levels 17–31)
# => 1/2 × (5 × level^2 - 81 × level) + 360
scoreboard players operation #xp.get_total_points.x bs.data *= 81 bs.const
scoreboard players operation #xp.get_total_points.x2 bs.data *= #xp.get_total_points.x2 bs.data
scoreboard players operation #xp.get_total_points.x2 bs.data *= 5 bs.const
scoreboard players operation #xp.get_total_points.x2 bs.data -= #xp.get_total_points.x bs.data
scoreboard players operation #xp.get_total_points.x2 bs.data /= 2 bs.const
scoreboard players operation $xp.get_total_points bs.out += #xp.get_total_points.x2 bs.data
return run scoreboard players add $xp.get_total_points bs.out 360
