execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1199,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=15,tag=IsPlaying] C15S3 23
execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1180,score_Spell3=1180] ~ ~ ~ /execute @a[score_InGame_min=1] ~ ~ ~ /playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 0.5 1
execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1185] ~ ~ ~ /execute @a[score_InGame_min=1] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
tp @e[score_C15S3=1,score_C15S3_min=1] ~ ~15 ~
effect @e[score_C15S3_min=22] levitation 1 25 true
execute @a[score_C15S3=2,score_C15S3_min=2] ~ ~ ~ /spreadplayers ~ ~ 15 50 false @p
effect @a[score_Class_min=15,score_Class=15,score_Spell3_min=1199] levitation 1 25 true
execute @a[score_Class_min=15,score_Class=15,score_Spell3=1175,score_Spell3_min=1175] ~ ~ ~ /spreadplayers ~ ~ 15 50 false @p
scoreboard players remove @e[score_C15S3_min=1] C15S3 1
scoreboard players set @e[score_C15S3=1,score_C15S3_min=1] TouchBy 15
scoreboard players set @e[score_C15S3=1,score_C15S3_min=1,score_EffFall=100] EffFall 100
scoreboard players set @a[score_Class_min=15,score_Class=15,score_Spell3_min=1199,score_EffInvulnerable=2] EffInvulnerable 20
execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1199,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,r=15,tag=IsPlaying] C15S3 23
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=7,score_LifeState_min=500,score_EffScare=60] EffScare 60
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_LifeState_min=500,r=7] EffDamage 2
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_LifeState_min=500,r=7] TouchBy 15
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499] ~ ~ ~ /playsound block.redstone_torch.burnout record @a[r=30] ~ ~ ~ 2 1 1
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,score_LifeState_min=500,score_EffScare=60] EffScare 60
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,score_LifeState_min=500,r=7] EffDamage 2
execute @a[score_Class_min=15,score_Class=15,score_Spell2_min=499,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,score_LifeState_min=500,r=7] TouchBy 15
scoreboard players set @a[score_Class_min=15,score_Class=15,score_Spell1_min=399] UpgradedWeapon 100
scoreboard players set @a[score_Class_min=15,score_Class=15,score_Spell1_min=399,score_EffSpeed=2100] EffSpeed 2100
scoreboard players set @a[score_Class_min=15,score_Class=15,score_Spell1_min=399] EffJump 3100
replaceitem entity @a[score_EffSilencePrim=0,score_UpgradedWeapon_min=1,score_InGame_min=1,score_Class_min=15,score_Class=15,m=2] slot.hotbar.0 wooden_sword 1 0 {Unbreakable:1,ench:[{id:19,lvl:2},{id:16,lvl:0}],display:{Name:"Basic Attack (Upgraded)"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}
replaceitem entity @a[score_InGame_min=1,score_Class_min=15,score_Class=15,score_EffNoMove_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=15,score_TouchBy=15,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle snowshovel ~ ~1 ~ 1 1 1 0.1 10 force
execute @a[score_TouchBy_min=15,score_TouchBy=15,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle cloud ~ ~1 ~ 0.5 1 0.5 0 10 force
scoreboard players set @a[score_Class_min=15,score_Class=15,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell1 400
scoreboard players set @a[score_Class_min=15,score_Class=15,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 500
scoreboard players set @a[score_Class_min=15,score_Class=15,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1200
replaceitem entity @a[score_Mana=19,score_Class_min=15,score_Class=15,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=15,score_Class=15,score_UsePotion_min=2,score_UsePotion=2] Mana 20
replaceitem entity @a[score_Mana=29,score_Class_min=15,score_Class=15,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=15,score_Class=15,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_Mana=119,score_Class_min=15,score_Class=15,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=15,score_Class=15,score_UseXp_min=2,score_UseXp=2] Mana 120
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_EffNoMove=0,score_Class_min=15,score_Class=15,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Wind Asistance  20✸  20s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=15,score_Class=15,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Disturbance  30✸  25s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=120,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=15,score_Class=15,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Cyclone  120✸  60s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=15,score_TouchBy=15,team=Orange] ~ ~ ~ /say got carried away by the breath of @p[score_Class_min=15,score_Class=15,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=15,score_TouchBy=15,team=Blue] ~ ~ ~ /say got carried away by the breath of @p[score_Class_min=15,score_Class=15,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=15,score_TouchBy=15,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=15,score_Class=15,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=15,score_TouchBy=15,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=15,score_Class=15,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1