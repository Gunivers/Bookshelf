execute @a[score_Spell3_min=1199,score_Spell3=1199,score_Class_min=13,score_Class=13,team=Blue] ~ ~ ~ scoreboard players set @a[tag=AffectByBlue,r=7] AT3G 140
scoreboard players tag @a remove 133B
scoreboard players tag @a[tag=AffectByBlue,score_AT3G_min=1] add 133B
execute @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13,team=Blue] ~ ~ ~ scoreboard players tag @a[tag=AffectByBlue,score_AT3G_min=1,r=9] remove 133B
execute @a[tag=133B] ~ ~ ~ /particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute @a[team=Blue,score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200] ~ ~ ~ teleport @a[tag=133B,r=15] ~ ~3 ~
execute @a[team=Blue,score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200] ~ ~ ~ spreadplayers ~ ~ 1 3 false @a[tag=133B,r=15]
execute @a[tag=133B] ~ ~ ~ /particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute @a[tag=133B] ~ ~ ~ /playsound entity.endermen.teleport ambient @a[r=15]
scoreboard players tag @a[score_AT3G_min=1,team=Orange] add 133B2
execute @a[score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200,team=Blue] ~ ~ ~ /scoreboard players tag @a[score_AT3G_min=1,tag=AffectByBlue] remove 133B2
scoreboard players set @a[tag=133B2] AT3G 0
scoreboard players tag @a remove 133B2
scoreboard players remove @a[score_AT3G_min=1] AT3G 1
effect @a[score_AT3G_min=61] minecraft:blindness 3 0 true
effect @a[score_AT3G_min=21] glowing 1 0 true
execute @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13] ~ ~ ~ /particle cloud ~ ~-0.4 ~ 3 0 3 0 10 force
effect @a[score_Spell3_min=1080,score_Spell3=1200,score_Class_min=13,score_Class=13] glowing 1 0 true
effect @a[score_AT3G_min=21] minecraft:slowness 1 1 true
scoreboard players set @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13] UpgradedWeapon 2
execute @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13] ~ ~ ~ /particle largeexplode ~ ~-0.4 ~ 3 0 3 0 2 force
execute @a[score_Spell3_min=1199,score_Spell3=1199,score_Class_min=13,score_Class=13,team=Orange] ~ ~ ~ scoreboard players set @a[tag=AffectByOrange,r=7] AT3G 139
scoreboard players tag @a remove 133O
scoreboard players tag @a[tag=AffectByOrange,score_AT3G_min=1] add 133O
execute @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13,team=Orange] ~ ~ ~ scoreboard players tag @a[tag=AffectByOrange,score_AT3G_min=1,r=9] remove 133O
execute @a[tag=133O] ~ ~ ~ /particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute @a[team=Orange,score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200] ~ ~ ~ teleport @a[tag=133O,r=15] ~ ~3 ~
execute @a[team=Orange,score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200] ~ ~ ~ spreadplayers ~ ~ 1 3 false @a[tag=133O,r=10]
execute @a[tag=133O] ~ ~ ~ /particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute @a[tag=133O] ~ ~ ~ /playsound entity.endermen.teleport ambient @a[r=15]
scoreboard players tag @a[score_AT3G_min=1,team=Blue] add 133O2
execute @a[score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200,team=Orange] ~ ~ ~ /scoreboard players tag @a[score_AT3G_min=1,tag=AffectByOrange] remove 133O2
scoreboard players set @a[tag=133O2] AT3G 0
scoreboard players tag @a remove 133O2
execute @e[type=armor_stand,score_Class_min=-13,score_Class=-13] ~ ~ ~ /playsound entity.arrow.shoot record @a[r=10] ~ ~ ~ 1 2 0.5
execute @e[type=armor_stand,score_Class_min=-13,score_Class=-13] ~ ~ ~ /tp @e[team=Orange,r=3,score_LifeState_min=500] @p[team=Blue,score_Class_min=13,score_Class=13,score_Spell2_min=400]
scoreboard players set @e[type=armor_stand,score_Class_min=-13,score_Class=-13] DirWall 10
execute @a[score_InGame_min=1,score_Class_min=13,score_Class=13,score_Spell3_min=1199,score_Spell3=1199,m=2] ~ ~ ~ /playsound entity.lightning.thunder record @a[r=30] ~ ~ ~ 2 0.5 1
scoreboard players set @e[type=armor_stand,score_Class_min=13,score_Class=13] DirWall 10
execute @e[type=armor_stand,score_Class_min=13,score_Class=13] ~ ~ ~ /tp @e[team=Blue,r=3,score_LifeState_min=500] @p[team=Orange,score_Class_min=13,score_Class=13,score_Spell2_min=400]
execute @e[type=armor_stand,score_Class_min=13,score_Class=13] ~ ~ ~ /playsound entity.arrow.shoot record @a[r=10] ~ ~ ~ 1 2 0.5
execute @a[score_Class_min=13,score_Class=13,score_Spell1_min=398,team=Blue] ~ ~ ~ /scoreboard players set @e[r=10,team=Blue,score_EffInvulnerable=20] EffInvulnerable 20
execute @a[score_Class_min=13,score_Class=13,score_Spell1_min=398,team=Blue] ~ ~ ~ /scoreboard players set @e[r=10,team=!Blue] TouchBy 13
execute @a[score_Class_min=13,score_Class=13,score_Spell1=384,score_Spell1_min=384] ~ ~ ~ /summon Lightning_Bolt ~4 ~ ~
execute @a[score_Class_min=13,score_Class=13,score_Spell1=386,score_Spell1_min=386] ~ ~ ~ /summon Lightning_Bolt ~4 ~ ~4
execute @a[score_Class_min=13,score_Class=13,score_Spell1=390,score_Spell1_min=390] ~ ~ ~ /summon Lightning_Bolt ~-4 ~ ~-4
execute @a[score_Class_min=13,score_Class=13,score_Spell1=388,score_Spell1_min=388] ~ ~ ~ /summon Lightning_Bolt ~-4 ~ ~
execute @a[score_Class_min=13,score_Class=13,score_Spell1=394,score_Spell1_min=394] ~ ~ ~ /summon Lightning_Bolt ~-4 ~ ~4
execute @a[score_Class_min=13,score_Class=13,score_Spell1=392,score_Spell1_min=392] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~4
execute @a[score_Class_min=13,score_Class=13,score_Spell1=398,score_Spell1_min=398] ~ ~ ~ /summon Lightning_Bolt ~4 ~ ~-4
execute @a[score_Class_min=13,score_Class=13,score_Spell1=396,score_Spell1_min=396] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~-4
execute @a[score_Class_min=13,score_Class=13,score_Spell1=382,score_Spell1_min=382] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~
execute @a[score_Class_min=13,score_Class=13,score_Spell1_min=398,team=Orange] ~ ~ ~ /scoreboard players set @e[r=10,team=Orange,score_EffInvulnerable=20] EffInvulnerable 20
execute @a[score_Class_min=13,score_Class=13,score_Spell1_min=398,team=Orange] ~ ~ ~ /scoreboard players set @e[r=10,team=!Orange] TouchBy 13
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=13,score_Class=13,score_UpgradedWeapon_min=1,m=2] slot.hotbar.0 diamond_sword 1 0 {Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Name:"Basic Attack"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}
execute @a[score_TouchBy_min=13,score_TouchBy=13,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle spell ~ ~1 ~ 0.3 1 0.3 0 10 force
execute @a[score_TouchBy_min=13,score_TouchBy=13,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle sweepAttack ~ ~1 ~ 0.5 1 0.5 0 3 force
scoreboard players set @a[score_Class_min=13,score_Class=13,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 400
scoreboard players set @a[score_Class_min=13,score_Class=13,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell2 500
scoreboard players set @a[score_Class_min=13,score_Class=13,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1200
replaceitem entity @a[score_Mana=29,score_Class_min=13,score_Class=13,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=13,score_Class=13,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_Mana=49,score_Class_min=13,score_Class=13,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=13,score_Class=13,score_UseCarrot_min=2,score_UseCarrot=2] Mana 50
replaceitem entity @a[score_Mana=89,score_Class_min=13,score_Class=13,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=13,score_Class=13,score_UseXp_min=2,score_UseXp=2] Mana 90
replaceitem entity @a[score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=13,score_Class=13,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Thunder Bolt  30✸  20s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=50,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=13,score_Class=13,m=2] slot.hotbar.2 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Static  50✸  25s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=90,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=13,score_Class=13,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Electron  90✸  60s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=13,score_TouchBy=13,team=Orange] ~ ~ ~ /say was electrocuted by @p[score_Class_min=13,score_Class=13,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=13,score_TouchBy=13,team=Blue] ~ ~ ~ /say was electrocuted by @p[score_Class_min=13,score_Class=13,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=13,score_TouchBy=13,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=13,score_Class=13,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=13,score_TouchBy=13,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=13,score_Class=13,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1