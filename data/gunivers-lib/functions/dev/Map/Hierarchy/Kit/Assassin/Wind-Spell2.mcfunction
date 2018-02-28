execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=7,score_LifeState_min=500,score_EffScare=60] EffScare 60
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_LifeState_min=500,r=7] EffDamage 2
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_LifeState_min=500,r=7] TouchBy 15
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499] ~ ~ ~ /playsound block.redstone_torch.burnout record @a[r=30] ~ ~ ~ 2 1 1
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,score_LifeState_min=500,score_EffScare=60] EffScare 60
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,score_LifeState_min=500,r=7] EffDamage 2
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,score_LifeState_min=500,r=7] TouchBy 15
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499] ~ ~ ~ /particle cloud ~ ~0.3 ~ 4 0 4 0 50 force