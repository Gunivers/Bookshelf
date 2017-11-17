replaceitem entity @e[score_EffScare_min=1,score_EffInvulnerable=0,score_HaveObjective=0,score_InGame_min=1,team=!Spec] slot.armor.head pumpkin 1 0
scoreboard players set @a[score_EffScare_min=1,score_EffNoTp=2,team=!Spec] EffNoTp 2
scoreboard players set @a[score_EffScare_min=1,score_EffNoMove=2,team=!Spec] EffNoMove 2
tp @e[score_EffScare_min=1,score_Timer=1,score_Timer_min=1,score_InGame_min=1,team=!Spec] ~ ~ ~ ~50 ~5
tp @e[score_EffScare_min=1,score_Timer=11,score_Timer_min=11,score_InGame_min=1,team=!Spec] ~ ~ ~ ~-75 ~-10
tp @e[score_EffScare_min=1,score_Timer=31,score_Timer_min=31,score_InGame_min=1,team=!Spec] ~ ~ ~ ~-25 ~-5
tp @e[score_EffScare_min=1,score_Timer=21,score_Timer_min=21,score_InGame_min=1,team=!Spec] ~ ~ ~ ~50 ~10
scoreboard players remove @e[score_EffScare_min=1] EffScare 1
