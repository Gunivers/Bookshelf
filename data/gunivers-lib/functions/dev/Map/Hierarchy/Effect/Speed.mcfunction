effect @e[score_EffSpeed_min=1,score_EffSpeed=999,tag=IsPlaying] speed 1 2 true
effect @e[score_EffSpeed_min=1000,score_EffSpeed=1999,tag=IsPlaying] speed 1 3 true
effect @e[score_EffSpeed_min=2000,score_EffSpeed=2999,tag=IsPlaying] speed 1 4 true
effect @e[score_EffSpeed_min=3000,score_EffSpeed=3999,tag=IsPlaying] speed 1 15 true
scoreboard players set @e[score_EffSpeed_min=1000,score_EffSpeed=1000] EffSpeed 0
scoreboard players set @e[score_EffSpeed_min=2000,score_EffSpeed=2000] EffSpeed 0
scoreboard players set @e[score_EffSpeed_min=3000,score_EffSpeed=3000] EffSpeed 0
scoreboard players remove @e[score_EffSpeed_min=1] EffSpeed 1