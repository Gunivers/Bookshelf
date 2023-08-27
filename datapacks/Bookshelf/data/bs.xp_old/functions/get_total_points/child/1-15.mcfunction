# For level 1 to 15, XP =  REST + 6*LEVEL + LEVEL^2
#                                 ^^^^^^^^^^^^^^^^^

scoreboard players operation #xp.tmp bs.data = #xp.levels bs.data
scoreboard players operation #xp.tmp bs.data *= 6 bs.const
scoreboard players operation @s bs.out.0 += #xp.tmp bs.data

scoreboard players operation #xp.tmp bs.data = #xp.levels bs.data
scoreboard players operation #xp.tmp bs.data *= #xp.levels bs.data
scoreboard players operation @s bs.out.0 += #xp.tmp bs.data