scoreboard players set @e[score_EffNoDie_min=1000,score_EffNoDie=1000] EffNoDie 0
scoreboard players set @e[score_EffNoDie_min=2000,score_EffNoDie=2000] EffNoDie 0
scoreboard players set @a[score_EffNoDie_min=1,score_LifeState_min=2,score_LifeState=379] LifeState 380
scoreboard players set @a[score_EffNoDie_min=1,score_Respawn_min=0] EffEffSilencePrim 2
effect @a[score_LifeState=420,score_InGame_min=1,score_EffNoDie_min=1] slowness 1 100 true
scoreboard players set @a[score_EffNoDie_min=1,score_LifeState=400] EffInvulnerable 2
scoreboard players set @a[score_EffNoDie_min=1,score_LifeState=440] EffSilence 2
execute @a[score_EffNoDie_min=1,score_LifeState=400,m=2] ~ ~ ~ /particle lava ~ ~ ~ 0 0 0 0 1
execute @a[score_EffNoDie_min=1,score_LifeState_min=381,score_LifeState=382,m=2] ~ ~ ~ /playsound entity.enderdragon.growl record @a[r=30] ~ ~ ~ 2 1 1
scoreboard players remove @e[score_EffNoDie_min=1,score_InGame_min=1,score_LifeState_min=400] EffNoDie 1
