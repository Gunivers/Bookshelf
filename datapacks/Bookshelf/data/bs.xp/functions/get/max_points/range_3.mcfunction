# 9 × current_level – 158 (for levels 31+)
scoreboard players operation $xp.get_max_points bs.out *= 9 bs.const
return run scoreboard players remove $xp.get_max_points bs.out 158
