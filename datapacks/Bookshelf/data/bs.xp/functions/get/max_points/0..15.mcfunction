# 2 × current_level + 7 (for levels 0–15)

scoreboard players operation #xp.get_max_points bs.data *= 2 bs.const
scoreboard players add #xp.get_max_points bs.data 7
