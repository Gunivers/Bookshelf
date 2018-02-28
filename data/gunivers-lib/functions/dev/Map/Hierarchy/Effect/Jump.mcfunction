effect @e[score_EffJump_min=1,score_EffJump=999,tag=IsPlaying] jump_boost 1 0 true
effect @e[score_EffJump_min=1000,score_EffJump=1999,tag=IsPlaying] jump_boost 1 1 true
effect @e[score_EffJump_min=2000,score_EffJump=2999,tag=IsPlaying] jump_boost 1 2 true
effect @e[score_EffJump_min=3000,score_EffJump=3999,tag=IsPlaying] jump_boost 1 3 true
scoreboard players set @e[score_EffJump_min=1000,score_EffJump=1000] EffJump 0
scoreboard players set @e[score_EffJump_min=2000,score_EffJump=2000] EffJump 0
scoreboard players set @e[score_EffJump_min=3000,score_EffJump=3000] EffJump 0
scoreboard players remove @e[score_EffJump_min=1] EffJump 1
