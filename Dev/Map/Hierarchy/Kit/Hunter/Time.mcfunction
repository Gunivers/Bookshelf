execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell3_min=199,score_Spell3=199] ~ ~ ~ /playsound entity.creeper.hurt record @a[r=30] ~ ~ ~ 2 2 1
scoreboard players remove @a[score_UseXp_min=2,score_UseXp=2,score_Class_min=21,score_Class=21,score_InGame_min=1] UpgradedWeapon 1
scoreboard players set @a[score_Class_min=21,score_Class=21,score_InGame_min=1,score_UpgradedWeapon=-2] UpgradedWeapon 0
scoreboard players set @a[score_UseXp_min=2,score_UseXp=2,score_Class_min=21,score_Class=21,score_InGame_min=1] Spell2 0
scoreboard players set @a[score_UseXp_min=2,score_UseXp=2,score_Class_min=21,score_Class=21,score_InGame_min=1] Spell1 0
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_UseSnowball_min=2,score_UseSnowball=2,team=Blue] ~ ~ ~ /scoreboard players set @e[type=Snowball,r=10,c=1] Class -21
execute @e[type=Snowball,score_Class_min=-21,score_Class=-21] ~ ~ ~ /scoreboard players set @e[r=3,tag=IsPlaying,team=Orange] EffSlow 3040
execute @e[type=Snowball,score_Class_min=-21,score_Class=-21] ~ ~ ~ /tp @e[r=3,tag=IsPlaying,team=Orange] @p[tag=IsPlaying,score_Class=21,score_Class_min=21,score_Spell2_min=370,team=Blue]
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell2_min=399,team=Blue] ~ ~ ~ /playsound entity.endermen.teleport record @a[r=30] ~ ~ ~ 2 2 1
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell2_min=399] ~ ~ ~ /playsound entity.endermen.teleport record @a[r=30] ~ ~ ~ 2 2 1
scoreboard players set @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell2_min=499,score_EffInvisibility=10,score_UpgradedWeapon_min=0] EffInvisibility 30
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell2_min=499,score_UpgradedWeapon_min=0] ~ ~ ~ /particle largesmoke ~ ~1 ~ 0.2 0.5 0.2 0 10 force
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_UseSnowball_min=2,score_UseSnowball=2,team=Orange] ~ ~ ~ /scoreboard players set @e[type=Snowball,r=10,c=1] Class 21
execute @e[type=Snowball,score_Class_min=21,score_Class=21] ~ ~ ~ /scoreboard players set @e[r=3,tag=IsPlaying,team=Blue] EffSlow 3040
execute @e[type=Snowball,score_Class_min=21,score_Class=21] ~ ~ ~ /tp @e[r=3,tag=IsPlaying,team=Blue] @p[tag=IsPlaying,score_Class=21,score_Class_min=21,score_Spell2_min=370,team=Orange]
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell2_min=399,team=Orange] ~ ~ ~ /playsound entity.endermen.teleport record @a[r=30] ~ ~ ~ 2 2 1
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell1_min=199,team=Blue] ~ ~ ~ /execute @e[tag=IsPlaying,team=!Blue,r=7] ~ ~ ~ /particle dragonbreath ~ ~ ~ 0.2 0.5 0.2 0 20 force
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_UsePotion_min=2,score_UsePotion=2,team=Blue,score_UpgradedWeapon_min=0] ~ ~ ~ /scoreboard players add @e[tag=IsPlaying,team=!Blue,r=7] EffSlow 40
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell1_min=199,team=Blue,score_UpgradedWeapon=-1] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Blue,r=7,score_EffDamage=1002] EffDamage 1002
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell1_min=199,team=Blue,score_UpgradedWeapon_min=0] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Blue,r=7,score_EffDamage=2] EffDamage 2
execute @a[score_Class_min=21,score_Class=21,m=2,score_InGame_min=1,score_Spell1_min=199,score_UpgradedWeapon=-1,team=Blue] ~ ~ ~ /scoreboard players set @a[r=7,score_InGame_min=1,team=Orange,m=2] TouchBy 21
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell1_min=199,score_Spell1=199] ~ ~ ~ /playsound entity.firework.twinkle record @a[r=30] ~ ~ ~ 2 2 1
clear @a[score_Class_min=21,score_Class=21,score_InGame_min=1,score_UpgradedWeapon_min=0] iron_axe
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell1_min=199,team=Orange] ~ ~ ~ /execute @e[tag=IsPlaying,team=!Orange,r=7] ~ ~ ~ /particle dragonbreath ~ ~ ~ 0.2 0.5 0.2 0 20 force
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_UsePotion_min=2,score_UsePotion=2,team=Orange,score_UpgradedWeapon_min=0] ~ ~ ~ /scoreboard players add @e[tag=IsPlaying,team=!Orange,r=7] EffSlow 40
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell1_min=199,team=Orange,score_UpgradedWeapon=-1] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Orange,r=7,score_EffDamage=1002] EffDamage 1002
execute @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_Spell1_min=199,team=Orange,score_UpgradedWeapon_min=0] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Orange,r=7,score_EffDamage=2] EffDamage 2
execute @a[score_Class_min=21,score_Class=21,m=2,score_InGame_min=1,score_Spell1_min=199,score_UpgradedWeapon=-1,team=Orange] ~ ~ ~ /scoreboard players set @a[r=7,score_InGame_min=1,team=Blue,m=2] TouchBy 21
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=21,score_Class=21,score_UpgradedWeapon=-1,m=2] slot.hotbar.0 iron_axe 1 0 {Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Name:"Basic Attack"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}
replaceitem entity @a[score_InGame_min=1,score_Class_min=21,score_Class=21,score_EffNoTp_min=1,score_Spell2=0,m=2,score_UpgradedWeapon_min=0] slot.hotbar.2 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=21,score_TouchBy=21,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle depthsuspend ~ ~1 ~ 0.5 1 0.5 0 20 force
execute @a[score_TouchBy_min=21,score_TouchBy=21,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle witchMagic ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=21,score_Class=21,score_UsePotion_min=1,score_InGame_min=1,m=2] Spell1 200
scoreboard players set @a[score_Class_min=21,score_Class=21,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=21,score_Class=21,score_UseSnowball_min=2,score_UseSnowball=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=21,score_Class=21,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 200
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=21,score_Class=21,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Time Law  0✸  10s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_EffNoTp=0,score_Spell2=0,score_Class_min=21,score_Class=21,m=2,score_UpgradedWeapon_min=0] slot.hotbar.2 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Travel  0✸  20s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_EffNoTp=0,score_Spell2=0,score_Class_min=21,score_Class=21,m=2,score_UpgradedWeapon=-1] slot.hotbar.2 minecraft:snowball 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Travel  0✸  20s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=21,score_Class=21,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Inversion  0✸  10s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=21,score_TouchBy=21,team=Orange] ~ ~ ~ /say 's existence has been erased by @p[score_Class_min=21,score_Class=21,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=21,score_TouchBy=21,team=Blue] ~ ~ ~ /say 's existence has been erased by @p[score_Class_min=21,score_Class=21,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=21,score_TouchBy=21,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=21,score_Class=21,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=21,score_TouchBy=21,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=21,score_Class=21,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1