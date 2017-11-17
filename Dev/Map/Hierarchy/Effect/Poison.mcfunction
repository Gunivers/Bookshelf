effect @e[score_EffPoison_min=1,score_EffPoison=999,score_Timer_min=1,score_Timer=1,tag=IsPlaying,score_EffInvulnerable=0] wither 1 1 true
effect @e[score_EffPoison_min=1,score_EffPoison=999,score_Timer_min=14,score_Timer=14,tag=IsPlaying,score_EffInvulnerable=0] wither 1 1 true
effect @e[score_EffPoison_min=1,score_EffPoison=999,score_Timer_min=27,score_Timer=27,tag=IsPlaying,score_EffInvulnerable=0] wither 1 1 true
effect @e[score_EffPoison_min=1000,score_EffPoison=1999,tag=IsPlaying,score_EffInvulnerable=0] wither 1 1 true
effect @a[score_EffPoison_min=0,score_EffPoison=0,score_EffInvulnerable=0] wither 0
scoreboard players set @e[score_EffPoison_min=1000,score_EffPoison=1000] EffPoison 0
scoreboard players remove @e[score_EffPoison_min=0] EffPoison 1
