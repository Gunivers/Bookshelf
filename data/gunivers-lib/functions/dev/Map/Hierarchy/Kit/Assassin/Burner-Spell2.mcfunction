scoreboard players set @a[score_Class_min=12,score_Class=12,score_Spell2_min=298,score_EffSpeed=3002] EffSpeed 3002
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell2_min=299] ~ ~ ~ /playsound item.firecharge.use record @a[r=10] ~ ~ ~ 1 1 0.5
execute @a[score_Class_min=12,score_Class=12,score_Spell2_min=278,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,r=2,score_LifeState_min=500,score_EffScare=40] EffScare 40
execute @a[score_Class_min=12,score_Class=12,score_Spell2_min=278,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Orange,r=2,score_LifeState_min=500,score_EffScare=40] EffScare 40

execute @a[score_Class_min=12,score_Class=12,score_Spell2_min=278] ~ ~ ~ /particle flame ~ ~1 ~ 0.2 0.5 0.2 0 10 force
