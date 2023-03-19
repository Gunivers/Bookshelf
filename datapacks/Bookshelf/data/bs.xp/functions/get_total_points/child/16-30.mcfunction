# For level 16 to 30, XP =  REST +  1/2 * (5*LEVEL^2 + 59*LEVEL + 566)
#                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

scoreboard players remove #xp.levels bs.data 14

scoreboard players operation @s bs.out.0 += 283 bs.const

scoreboard players operation #xp.tmp bs.data = #xp.levels bs.data
scoreboard players operation #xp.tmp bs.data *= 59 bs.const

scoreboard players operation #xp.tmp2 bs.data = #xp.levels bs.data
scoreboard players operation #xp.tmp2 bs.data *= #xp.levels bs.data
scoreboard players operation #xp.tmp2 bs.data *= 5 bs.const

scoreboard players operation #xp.tmp bs.data += #xp.tmp2 bs.data
scoreboard players operation #xp.tmp bs.data /= 2 bs.const

scoreboard players operation @s bs.out.0 += #xp.tmp bs.data