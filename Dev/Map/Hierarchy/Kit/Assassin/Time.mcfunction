execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=999,score_Spell3=999,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=997,score_Spell3=997,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=995,score_Spell3=995,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=993,score_Spell3=993,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,score_Spell3=991,team=Blue] ~ ~ ~ /tp @p[r=1] @r[team=Orange,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=1] EffDamage 1003
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=1] TouchBy 11
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=990] ~ ~ ~ /playsound entity.endermen.hurt record @a[r=10] ~ ~ ~ 2 2 1
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,team=Orange] ~ ~ ~ /scoreboard players set @a[team=Blue,r=1] EffDamage 1003
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,score_Spell3=991,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=993,score_Spell3=993,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=995,score_Spell3=995,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=997,score_Spell3=997,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=999,score_Spell3=999,team=Orange] ~ ~ ~ /tp @p[r=1] @r[team=Blue,rm=1,r=15,score_InGame_min=1]
execute @a[score_Class_min=11,score_Class=11,score_Spell3_min=991,team=Orange] ~ ~ ~ /scoreboard players set @a[team=Blue,r=1] TouchBy 11
scoreboard players set @a[score_Class_min=11,score_Class=11,score_Spell2_min=599] UpgradedWeapon 140
execute @a[score_Class_min=11,score_Class=11,score_Spell2_min=599] ~ ~ ~ /playsound entity.enderdragon.growl record @a[r=15] ~ ~ ~ 2 2 1
execute @a[score_Class_min=11,score_Class=11,score_Spell1_min=499] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=5] ~ ~ ~ 2 1 1
scoreboard players set @a[score_Class_min=11,score_Class=11,score_UseIronAxe_min=1] PrivateSpell 0
scoreboard players set @a[score_Class_min=11,score_Class=11,score_Spell1_min=499] PrivateSpell 200
scoreboard players set @a[score_InGame_min=1,score_Class=11,score_Class_min=11,m=2,score_PrivateSpell_min=1,score_EffInvisibility=2] EffInvisibility 2
scoreboard players set @a[score_InGame_min=1,score_Class=11,score_Class_min=11,m=2,score_PrivateSpell_min=1,score_EffSpeed=2002] EffSpeed 2002
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=11,score_Class=11,score_UpgradedWeapon_min=1,m=2] slot.hotbar.0 diamond_sword 1 0 {Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Name:"Basic Attack (Upgraded)"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}
replaceitem entity @a[score_InGame_min=1,score_Class_min=11,score_Class=11,score_EffNoMove_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=11,score_TouchBy=11,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle depthsuspend ~ ~1 ~ 0.5 1 0.5 0 20 force
execute @a[score_TouchBy_min=11,score_TouchBy=11,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle witchMagic ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=11,score_Class=11,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 500
scoreboard players set @a[score_Class_min=11,score_Class=11,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell2 600
scoreboard players set @a[score_Class_min=11,score_Class=11,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1000
replaceitem entity @a[score_Mana=29,score_Class_min=11,score_Class=11,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=11,score_Class=11,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_Mana=39,score_Class_min=11,score_Class=11,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=11,score_Class=11,score_UsePotion_min=2,score_UsePotion=2] Mana 40
replaceitem entity @a[score_Mana=69,score_Class_min=11,score_Class=11,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=11,score_Class=11,score_UseXp_min=2,score_UseXp=2] Mana 70
replaceitem entity @a[score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_EffNoMove=0,score_Spell1=0,score_Class_min=11,score_Class=11,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Phase Shift  30✸  25s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=40,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=11,score_Class=11,m=2] slot.hotbar.2 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Temporal Energy  40✸  30s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=70,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=11,score_Class=11,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Temporal Line  70✸  50s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=11,score_TouchBy=11,team=Orange] ~ ~ ~ /say 's existence has been erased by @p[score_Class_min=11,score_Class=11,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=11,score_TouchBy=11,team=Blue] ~ ~ ~ /say 's existence has been erased by @p[score_Class_min=11,score_Class=11,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=11,score_TouchBy=11,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=11,score_Class=11,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=11,score_TouchBy=11,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=11,score_Class=11,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1