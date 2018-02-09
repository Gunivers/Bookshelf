execute @e[score_EffNoBonus_min=1000,score_LifeState_min=500] ~ ~ ~ /scoreboard players operation @e[c=1,r=1] EffPoison = @e[c=1,r=1,score_EffRegen_min=1] EffRegen
scoreboard players set @e[score_EffNoBonus_min=1] EffRegen 0
scoreboard players set @e[score_EffNoBonus_min=1] EffResistance 0
scoreboard players set @e[score_EffNoBonus_min=1] EffJump 0
execute @e[score_EffNoBonus_min=1000,score_LifeState_min=500] ~ ~ ~ /scoreboard players operation @e[c=1,r=1] EffDamage = @e[c=1,r=1,score_EffHeal_min=1] EffHeal
scoreboard players set @e[score_EffNoBonus_min=1] EffHeal 0
execute @e[score_EffNoBonus_min=1000,score_LifeState_min=500] ~ ~ ~ /scoreboard players operation @e[c=1,r=1] EffSlow = @e[c=1,r=1,score_EffSpeed_min=1] EffSpeed
scoreboard players set @e[score_EffNoBonus_min=1] EffSpeed 0
scoreboard players set @e[score_EffNoBonus_min=1000,score_EffNoBonus=1000] EffNoBonus 0
scoreboard players remove @e[score_EffNoBonus_min=1] EffNoBonus 1
