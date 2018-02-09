effect @e[score_EffInvulnerable_min=1,tag=IsPlaying] minecraft:resistance 1 100 true
scoreboard players remove @e[score_EffInvulnerable_min=1] EffInvulnerable 1
effect @a[score_EffInvulnerable_min=1] wither 0
