execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell3_min=940,score_IsWalking_min=10] ~ ~ ~ /particle sweepAttack ~ ~1 ~ 2 1 2 0 10 force
execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell3_min=940,score_IsWalking_min=10] ~ ~ ~ /particle spell ~ ~1 ~ 2 1 2 0 50 force
execute @e[type=Snowball,score_Class_min=23,score_Class=23] ~ ~ ~ /particle cloud ~ ~ ~ 0 0 0 0 1 force
execute @e[type=Snowball,score_Class_min=-23,score_Class=-23] ~ ~ ~ /particle cloud ~ ~ ~ 0 0 0 0 1 force


execute @a[score_IsWalking_min=10,score_Class_min=23,score_Class=23,score_Spell3_min=960,score_EffSpeed_min=3002,team=Blue] ~ ~ ~ /execute @a[team=Orange,r=5,score_LifeState_min=500,score_C3_min=1] ~ ~ ~ /scoreboard players set @a[score_LifeState_min=500,team=Blue,r=3,score_EffInvulnerable=20] EffInvulnerable 20
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Blue] ~ ~ ~ /execute @e[team=Orange,r=5,score_LifeState_min=500,score_C3_min=1] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Orange,r=5,score_LifeState_min=500,score_C3_min=1] C3 0
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=5,score_LifeState_min=500,score_EffPoison_min=40] EffPoison 40
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=5,score_LifeState_min=500,score_C3_min=1] TouchBy 23
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=5,score_LifeState_min=500] TouchBy 23
execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell3_min=940,score_IsWalking_min=10] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 2 1
scoreboard players set @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell3_min=960,score_EffSpeed=3002] EffSpeed 3002
scoreboard players set @a[score_IsWalking_min=10,score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell3_min=940,score_EffSilence=2] EffSilence 10
scoreboard players set @a[score_IsWalking_min=10,score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell3_min=940,score_EffEffSilencePrim=2] EffEffSilencePrim 2
execute @a[score_IsWalking_min=10,score_Class_min=23,score_Class=23,score_Spell3_min=960,score_EffSpeed_min=3002,team=Orange] ~ ~ ~ /execute @a[team=Blue,r=5,score_LifeState_min=500,score_C3_min=1] ~ ~ ~ /sscoreboard players set @a[score_LifeState_min=500,team=Orange,r=3,score_EffInvulnerable=20] EffInvulnerable 20
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Orange] ~ ~ ~ /execute @e[team=Blue,r=5,score_LifeState_min=500,score_C3_min=1] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,r=5,score_LifeState_min=500,score_C3_min=1] C3 0
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Orange] ~ ~ ~ /scoreboard players set @a[team=Blue,r=5,score_LifeState_min=500,score_EffPoison_min=40] EffPoison 40
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Orange] ~ ~ ~ /scoreboard players set @a[team=Blue,r=5,score_LifeState_min=500,score_C3_min=1] TouchBy 23
execute @a[score_Class_min=23,score_Class=23,score_Spell3_min=960,team=Orange] ~ ~ ~ /scoreboard players set @a[team=Blue,r=5,score_LifeState_min=500] TouchBy 23
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=-23,score_Class=-23] ~ ~ ~ /summon Lightning_Bolt ~3 ~ ~
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=-23,score_Class=-23] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~3
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=-23,score_Class=-23] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~-3
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=-23,score_Class=-23] ~ ~ ~ /summon Lightning_Bolt ~-3 ~ ~
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=-23,score_Class=-23] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Blue] TouchBy 23
execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_UseSnowball_min=2,score_UseSnowball=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoGravity:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_UseSnowball_min=2,score_UseSnowball=2] ~ ~ ~ /scoreboard players set @e[type=armor_stand,r=10,c=1] Timer 30
execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_UseSnowball_min=2,score_UseSnowball=2,team=Orange] ~ ~ ~ /scoreboard players set @e[type=armor_stand,r=10,c=1] Class 23
execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_UseSnowball_min=2,score_UseSnowball=2,team=Blue] ~ ~ ~ /scoreboard players set @e[type=armor_stand,r=10,c=1] Class -23
execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_UseSnowball_min=2,score_UseSnowball=2,team=Orange] ~ ~ ~ /scoreboard players set @e[type=Snowball,r=10,c=1] Class 23
execute @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_UseSnowball_min=2,score_UseSnowball=2,team=Blue] ~ ~ ~ /scoreboard players set @e[type=Snowball,r=10,c=1] Class -23
execute @e[type=armor_stand,score_Class_min=23,score_Class=23] ~ ~ ~ /tp @e[type=armor_stand,r=3,c=1,score_Class_min=23,score_Class=23] @e[type=Snowball,score_Class_min=23,score_Class=23,r=15,c=1]
execute @e[type=armor_stand,score_Class_min=-23,score_Class=-23] ~ ~ ~ /tp @e[type=armor_stand,r=3,c=1,score_Class_min=-23,score_Class=-23] @e[type=Snowball,score_Class_min=-23,score_Class=-23,r=15,c=1]
execute @e[type=Snowball,score_Class_min=23,score_Class=23] ~ ~ ~ /scoreboard players set @e[type=armor_stand,score_Class_min=23,score_Class=23,r=10,c=1] Timer 30
execute @e[type=Snowball,score_Class_min=-23,score_Class=-23] ~ ~ ~ /scoreboard players set @e[type=armor_stand,score_Class_min=-23,score_Class=-23,r=10,c=1] Timer 30
execute @e[type=armor_stand,score_Timer_min=34,score_Timer=34,score_Class_min=23,score_Class=23] ~ ~ ~ /scoreboard players set @a[score_LifeState_min=500,team=Orange,r=7,score_EffInvulnerable=20] EffInvulnerable 20
execute @e[type=armor_stand,score_Timer_min=34,score_Timer=34,score_Class_min=-23,score_Class=-23] ~ ~ ~ /scoreboard players set @a[score_LifeState_min=500,team=Blue,r=7,score_EffInvulnerable=20] EffInvulnerable 20
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=23,score_Class=23] ~ ~ ~ /summon Lightning_Bolt ~3 ~ ~
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=23,score_Class=23] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~3
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=23,score_Class=23] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~-3
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=23,score_Class=23] ~ ~ ~ /summon Lightning_Bolt ~-3 ~ ~
execute @e[type=armor_stand,score_Timer_min=35,score_Timer=35,score_Class_min=23,score_Class=23] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Orange] TouchBy 23
execute @a[score_UseFishing_min=1,score_Class_min=23,score_Class=23,score_InGame_min=1] ~ ~ ~ /playsound entity.shulker.close record @a[r=30] ~ ~ ~ 2 2 1
execute @e[type=armor_stand,score_Timer_min=34,score_Timer=34,score_Class_min=-23,score_Class=-23] ~ ~ ~ /scoreboard players set @e[score_LifeState_min=500,team=Orange,r=7] C3 200
execute @e[type=armor_stand,score_Timer_min=34,score_Timer=34,score_Class_min=23,score_Class=23] ~ ~ ~ /scoreboard players set @e[score_LifeState_min=500,team=Blue,r=7] C3 200
scoreboard players set @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell1_min=299] UpgradedWeapon 140
scoreboard players set @a[score_LifeState_min=500,score_Class_min=23,score_Class=23,score_Spell1_min=299] UseBow 1
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=23,score_Class=23,score_UpgradedWeapon_min=1,m=2,score_HaveBow=0] slot.hotbar.0 bow 1 0 {Unbreakable:1,ench:[{id:49,lvl:0},{id:51,lvl:1},{id:48,lvl:3},{id:50,lvl:0}],display:{Name:"Basic Attack (Upgraded)"}}
replaceitem entity @a[score_InGame_min=1,score_Class_min=23,score_Class=23,score_EffNoMove_min=1,score_Spell3=0,m=2] slot.hotbar.3 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=23,score_TouchBy=23,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle spell ~ ~1 ~ 0.3 1 0.3 0 10 force
execute @a[score_TouchBy_min=23,score_TouchBy=23,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle sweepAttack ~ ~1 ~ 0.5 1 0.5 0 3 force
scoreboard players set @a[score_Class_min=23,score_Class=23,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 300
scoreboard players set @a[score_Class_min=23,score_Class=23,score_UseSnowball_min=2,score_UseSnowball=2,score_InGame_min=1,m=2] Spell2 200
scoreboard players set @a[score_Class_min=23,score_Class=23,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1000
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=23,score_Class=23,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Electric Charge  0✸  15s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=23,score_Class=23,m=2] slot.hotbar.2 minecraft:snowball 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Shock  0✸  10s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=23,score_Class=23,m=2,score_EffNoMove=0] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Under Voltage  0✸  50s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=23,score_TouchBy=23,team=Orange] ~ ~ ~ /say was electrocuted by @p[score_Class_min=23,score_Class=23,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=23,score_TouchBy=23,team=Blue] ~ ~ ~ /say was electrocuted by @p[score_Class_min=23,score_Class=23,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=23,score_TouchBy=23,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=23,score_Class=23,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=23,score_TouchBy=23,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=23,score_Class=23,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1