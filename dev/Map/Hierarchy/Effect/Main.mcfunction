scoreboard players add @e[type=!Item] EffRegen 0
execute @e[c=1,score_EffRegen_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/regen
scoreboard players add @a EffPlane 0
execute @e[c=1,score_EffPlane_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/plane
scoreboard players set @a[score_LifeState=455,score_LifeState_min=450] EffNoDie 0
execute @e[c=1,score_EffNoDie_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/nodie
scoreboard players add @e[type=!Item] EffMana 0
scoreboard players remove @e[score_EffMana_min=1] EffMana 1
scoreboard players add @e[type=!Item] EffFly 0
execute @e[c=1,score_EffFly_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/fly
execute @e[c=1,tag=NoFall] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/NoFall
scoreboard players add @e[type=!Item] EffJump 0
execute @e[c=1,score_EffJump_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/jump
scoreboard players add @e[type=!Item] EffSpeed 0
execute @e[c=1,score_EffSpeed_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/speed
scoreboard players add @e[type=!Item] EffFall 0
execute @e[c=1,score_EffFall_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/fall
scoreboard players add @e[type=!Item] EffInvisibility 0
execute @e[c=1,score_EffInvisibility_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/invisibility
scoreboard players add @e[type=!Item] EffInvulnerable 0
execute @e[c=1,score_EffInvulnerable_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/invulnerable
scoreboard players add @e[type=!Item] EffHeal 0
execute @e[c=1,score_EffHeal_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/heal
scoreboard players add @e[type=!Item] EffResistance 0
execute @e[c=1,score_EffResistance_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/resistance
scoreboard players add @e[type=!Item] EffDamage 0
execute @e[c=1,score_EffDamage_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/damage
scoreboard players add @e[type=!Item] EffSlow 0
execute @e[c=1,score_EffSlow_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/slow
scoreboard players add @e[type=!Item] EffScare 0
execute @e[c=1,score_EffScare_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/scare
scoreboard players add @e[type=!Item] EffPoison 0
execute @e[c=1,score_EffPoison_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/poison
scoreboard players add @a EffSilencePrim 0
execute @e[c=1,score_EffSilencePrim_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/silenceprim
scoreboard players add @a EffSilence 0
execute @e[c=1,score_EffSilence_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/silence
scoreboard players add @e[type=!Item] EffNoMalus 0
execute @e[c=1,score_EffNoMalus_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/nomalus
scoreboard players add @e[type=!Item] EffNoBonus 0
execute @e[c=1,score_EffNoBonus_min=1] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/effect/nobonus
effect @a[score_InGame_min=0,score_InGame=0,score_Class_min=1,team=Random,m=2] glowing 1 1 true
effect @a[score_InGame_min=0,score_InGame=0,score_Class_min=1,team=Orange,m=2] glowing 1 1 true
effect @a[score_InGame_min=0,score_InGame=0,score_Class_min=1,team=Blue,m=2] glowing 1 1 true
execute @e[team=Orange,score_InGame_min=1,score_Respawn=0,score_C3_min=1] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=2,rm=1] C3 300
execute @e[team=Blue,score_InGame_min=1,score_Respawn=0,score_C3_min=1] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=2,rm=1] C3 300
scoreboard players remove @a[score_C3_min=1] C3 1
scoreboard players set @a[score_LifeState=400] C3 0