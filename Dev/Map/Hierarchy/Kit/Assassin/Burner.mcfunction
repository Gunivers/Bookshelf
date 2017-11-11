execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /summon Ocelot ~ ~ ~ {Silent:1,Tags:["123B","123G","Blue","NotOrange"]}
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /summon Spider ~ ~ ~ {Silent:1,Tags:["123B","123G","Blue","NotOrange"]}
scoreboard players set @e[type=Ocelot,tag=123B,score_Timer_min=-99] Timer -100
scoreboard players set @e[type=Spider,tag=123B,score_Timer_min=-99] Timer -100
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=2,tag=IsPlaying,score_EffPoison_min=1001] EffPoison 1120
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=7,tag=IsPlaying] EffPoison 1120
execute @e[tag=123B] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=2,tag=IsPlaying,score_EffPoison_min=1001] EffPoison 1120
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=2,tag=IsPlaying,score_EffPoison_min=1001] TouchBy 12
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=7,tag=IsPlaying] TouchBy 12
execute @e[tag=123B] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=2,tag=IsPlaying,score_EffPoison_min=1001] TouchBy 12
scoreboard players set @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_EffInvisibility=100] EffInvisibility 100
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899] ~ ~ ~ /playsound block.fire.ambient record @a[r=30] ~ ~ ~ 2 1 1
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899] ~ ~ ~ /playsound item.flintandsteel.use @a ~ ~ ~ 2 1 1
scoreboard players set @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_EffSpeed=1100] EffSpeed 1100
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /summon Ocelot ~ ~ ~ {Silent:1,Tags:["123R","123G","Orange","NotBlue"]}
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /summon Spider ~ ~ ~ {Silent:1,Tags:["123R","123G","Orange","NotBlue"]}
scoreboard players set @e[type=Ocelot,tag=123R,score_Timer_min=-99] Timer -100
scoreboard players set @e[type=Spider,tag=123R,score_Timer_min=-99] Timer -100
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,tag=IsPlaying] EffPoison 1120
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=2,tag=IsPlaying,score_EffPoison_min=1001] EffPoison 1120
execute @e[tag=123R] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=2,tag=IsPlaying,score_EffPoison_min=1001] EffPoison 1120
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,tag=IsPlaying] TouchBy 12
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=2,tag=IsPlaying,score_EffPoison_min=1001] TouchBy 12
execute @e[tag=123R] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=2,tag=IsPlaying,score_EffPoison_min=1001] TouchBy 12
execute @a[score_Class_min=12,score_Class=12,score_Spell2_min=278,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Orange,r=2,score_LifeState_min=500,score_EffScare=40] EffScare 40
scoreboard players set @a[score_Class_min=12,score_Class=12,score_Spell2_min=298,score_EffSpeed=3002] EffSpeed 3002
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell2_min=299] ~ ~ ~ /playsound item.firecharge.use record @a[r=10] ~ ~ ~ 1 1 0.5
execute @a[score_Class_min=12,score_Class=12,score_Spell2_min=278,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,r=2,score_LifeState_min=500,score_EffScare=40] EffScare 40
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell1_min=399] ~ ~ ~ /playsound entity.creeper.hurt record @a[r=10] ~ ~ ~ 2 2 1
scoreboard players set @a[score_Class_min=12,score_Class=12,score_Spell1_min=398] UpgradedWeapon 140
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=12,score_Class=12,score_UpgradedWeapon_min=1,m=2] slot.hotbar.0 golden_sword 1 0 {Unbreakable:1,ench:[{id:19,lvl:1},{id:20,lvl:2},{id:16,lvl:0}],display:{Name:"Basic Attack (Upgraded)"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}
replaceitem entity @a[score_InGame_min=1,score_Class_min=12,score_Class=12,score_EffNoMove_min=1,score_Spell2=0,m=2] slot.hotbar.2 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=12,score_TouchBy=12,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle largesmoke ~ ~1 ~ 0.5 1 0.5 0 10 force
execute @a[score_TouchBy_min=12,score_TouchBy=12,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle flame ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=12,score_Class=12,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell1 400
scoreboard players set @a[score_Class_min=12,score_Class=12,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 300
scoreboard players set @a[score_Class_min=12,score_Class=12,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 900
replaceitem entity @a[score_Mana=14,score_Class_min=12,score_Class=12,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=12,score_Class=12,score_UsePotion_min=2,score_UsePotion=2] Mana 15
replaceitem entity @a[score_Mana=19,score_Class_min=12,score_Class=12,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=12,score_Class=12,score_UseFishing_min=2,score_UseFishing=2] Mana 20
replaceitem entity @a[score_Mana=89,score_Class_min=12,score_Class=12,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=12,score_Class=12,score_UseXp_min=2,score_UseXp=2] Mana 90
replaceitem entity @a[score_Mana_min=15,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=12,score_Class=12,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Flaming Touch  15✸  20s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_EffNoMove=0,score_Spell2=0,score_Class_min=12,score_Class=12,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Fuse  20✸  15s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=90,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=12,score_Class=12,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Ignition  90✸  45s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=12,score_TouchBy=12,team=Orange] ~ ~ ~ /say burned by touching @p[score_Class_min=12,score_Class=12,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=12,score_TouchBy=12,team=Blue] ~ ~ ~ /say burned by touching @p[score_Class_min=12,score_Class=12,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=12,score_TouchBy=12,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=12,score_Class=12,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=12,score_TouchBy=12,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=12,score_Class=12,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1