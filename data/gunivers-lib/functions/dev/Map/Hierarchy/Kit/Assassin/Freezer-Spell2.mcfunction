execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_LifeState_min=500,r=7] EffDamage 3
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Orange,r=7,score_LifeState_min=500,score_EffSlow=1060] EffSlow 1060
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=7,score_LifeState_min=500,score_EffSilence=60] EffSilence 60
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_LifeState_min=500,r=7] TouchBy 14
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=299] ~ ~ ~ /playsound block.redstone_torch.burnout record @a[r=30] ~ ~ ~ 2 1 1
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298,team=Orange] ~ ~ ~ /scoreboard players set @a[team=Blue,r=7,score_LifeState_min=500,score_EffSilence=60] EffSilence 60
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,r=7,score_LifeState_min=500,score_EffSlow=1060] EffSlow 1060
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,score_LifeState_min=500] EffDamage 3
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,score_LifeState_min=500] TouchBy 14

execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=299] ~ ~ ~ /particle magicCrit ~ ~ ~ 4 0 4 1 50 force