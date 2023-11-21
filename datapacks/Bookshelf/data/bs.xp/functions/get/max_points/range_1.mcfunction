# 2 × current_level + 7 (for levels 0–15)
scoreboard players operation $xp.get_max_points bs.out *= 2 bs.const
return run scoreboard players add $xp.get_max_points bs.out 7
