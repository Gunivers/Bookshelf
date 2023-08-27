# For level 31 to 40, XP =  REST +  1/2 * (9*LEVEL^2 + 197*LEVEL + 2584)
#                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

scoreboard players remove #xp.levels bs.data 29

scoreboard players operation @s bs.out.0 += 1292 bs.const

scoreboard players operation #xp.tmp bs.data = #xp.levels bs.data
scoreboard players operation #xp.tmp bs.data *= 197 bs.const

scoreboard players operation #xp.tmp2 bs.data = #xp.levels bs.data
scoreboard players operation #xp.tmp2 bs.data *= #xp.levels bs.data
scoreboard players operation #xp.tmp2 bs.data *= 9 bs.const

scoreboard players operation #xp.tmp bs.data += #xp.tmp2 bs.data
scoreboard players operation #xp.tmp bs.data /= 2 bs.const

scoreboard players operation @s bs.out.0 += #xp.tmp bs.data