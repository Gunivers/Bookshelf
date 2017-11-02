execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399,team=Blue] ~ ~ ~ /scoreboard players set @e[r=5,team=!Blue,tag=IsPlaying] EffDamage 1
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399,team=Blue] ~ ~ ~ /scoreboard players set @e[r=5,team=!Blue,tag=IsPlaying,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399,team=Blue] ~ ~ ~ /scoreboard players set @a[r=5,team=Orange,tag=IsPlaying] TouchBy 16
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399,team=Blue] ~ ~ ~ /kill @a[r=5,team=Orange,tag=IsPlaying,score_Health=16]
scoreboard players add @a[score_Class_min=16,score_Class=16,score_InGame_min=1,m=2,score_Spell3=-1] Spell3 1
effect @a[score_Class_min=16,score_Class=16,score_Spell3=-998,score_Spell3_min=-999,score_InGame_min=1,m=2] levitation 1 25 true
execute @a[score_Class_min=16,score_Class=16,score_Spell3=-998,score_Spell3_min=-999,score_InGame_min=1,m=2] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
scoreboard players set @a[score_Class_min=16,score_Class=16,score_Spell3=-1,score_InGame_min=1,m=2,score_HaveElytra=3] EffPlane 3
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=-981,score_Spell3=-1,score_InGame_min=1,m=2] ~ ~ ~ detect ~ ~-0.3 ~ air 0 /scoreboard players set @p[r=1,score_Class_min=16,score_Class=16,score_Spell3_min=-981,score_Spell3=-1,score_InGame_min=1,m=2] Spell3 -980
scoreboard players set @a[score_Class_min=16,score_Class=16,score_Spell3_min=-977,score_Spell3=-1,score_InGame_min=1,m=2] Spell3 2400
replaceitem entity @a[score_Class_min=16,score_Class=16,score_Spell3=-1,score_InGame_min=1,m=2] slot.hotbar.3 minecraft:gunpowder 1 0 {display:{Name:"PRESS SPACE and fall on your target !"},HideFlags:63}
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399] ~ ~ ~ /playsound entity.enderdragon.growl record @a[r=15] ~ ~ ~ 2 2 1
scoreboard players set @a[score_Class_min=16,score_Class=16,score_Spell3=-1,score_InGame_min=1,m=2,score_EffInvulnerable=3] EffInvulnerable 3
effect @a[score_EffPlane_min=1,tag=IsPlaying,score_Class_min=16,score_Class=16] minecraft:glowing 1 1 true
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399,team=Orange] ~ ~ ~ /scoreboard players set @e[r=5,team=!Orange,tag=IsPlaying] EffDamage 1
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399,team=Orange] ~ ~ ~ /scoreboard players set @e[r=5,team=!Orange,tag=IsPlaying,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399,team=Orange] ~ ~ ~ /scoreboard players set @a[r=5,team=Blue,tag=IsPlaying] TouchBy 16
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2399,team=Orange] ~ ~ ~ /kill @a[r=5,team=Blue,tag=IsPlaying,score_Health=16]
effect @e[type=Skeleton,tag=162B] speed 1 2 true
execute @a[score_Class_min=16,score_Class=16,score_Spell2_min=399,score_Spell2=399,team=Blue] ~ ~ ~ /summon Wither_Skeleton ~1 ~-2 ~ {CustomName:Guardians,CustomNameVisible:false,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:stone_sword",Count:1b}],LeftHanded:false,Tags:["SpawnAnime","NotOrange","Blue","162B","Life10"]}
execute @a[score_Class_min=16,score_Class=16,score_Spell2_min=399,score_Spell2=399,team=Blue] ~ ~ ~ /summon Wither_Skeleton ~-1 ~-2 ~ {CustomName:Guardians,CustomNameVisible:false,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:stone_sword",Count:1b}],LeftHanded:false,Tags:["SpawnAnime","NotOrange","Blue","162B","Life10"]}
execute @e[type=Skeleton,tag=162B] ~ ~ ~ /scoreboard players set @a[score_InGame_min=1,m=2,r=2,team=Orange] TouchBy 16
execute @a[score_Class_min=16,score_Class=16,score_Spell2_min=399,score_Spell2=399] ~ ~ ~ /playsound entity.zombie_pig.death record @a[r=15] ~ ~ ~ 2 2 1
execute @a[score_Class_min=16,score_Class=16,score_Spell2_min=399,score_Spell2=399,team=Orange] ~ ~ ~ /summon Wither_Skeleton ~1 ~-2 ~ {CustomName:Guardians,CustomNameVisible:false,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:stone_sword",Count:1b}],LeftHanded:false,Tags:["SpawnAnime","NotBlue","Orange","162R","Life10"]}
execute @a[score_Class_min=16,score_Class=16,score_Spell2_min=399,score_Spell2=399,team=Orange] ~ ~ ~ /summon Wither_Skeleton ~-1 ~-2 ~ {CustomName:Guardians,CustomNameVisible:false,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:stone_sword",Count:1b}],LeftHanded:false,Tags:["SpawnAnime","NotBlue","Orange","162R","Life10"]}
effect @e[type=Skeleton,tag=162R] speed 1 2 true
execute @e[type=Skeleton,tag=162R] ~ ~ ~ /scoreboard players set @a[score_InGame_min=1,m=2,r=2,team=Blue] TouchBy 16
execute @a[score_Class_min=16,score_Class=16,score_Spell1_min=599,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=7] EffInvisibility 40
execute @a[score_Class_min=16,score_Class=16,score_Spell1_min=592,score_Spell1=598,team=Blue] ~ ~ ~ /execute @e[team=Blue,r=7,tag=IsPlaying] ~ ~ ~ /summon Bat ~ ~ ~ {Silent:1}
execute @a[score_Class_min=16,score_Class=16,score_Spell1_min=592,score_Spell1=598,team=Blue] ~ ~ ~ /execute @e[team=Blue,r=7,tag=IsPlaying] ~ ~ ~ /summon Bat ~ ~0.5 ~ {Silent:1}
execute @a[score_Class_min=16,score_Class=16,score_Spell1_min=592,score_Spell1=598,team=Blue] ~ ~ ~ /execute @e[team=Blue,r=7,tag=IsPlaying] ~ ~ ~ /summon Bat ~ ~1 ~
execute @a[score_Class_min=16,score_Class=16,score_Spell1_min=599,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=7] EffInvisibility 40
execute @a[score_Class_min=16,score_Class=16,score_Spell1_min=592,score_Spell1=598,team=Orange] ~ ~ ~ /execute @e[team=Orange,r=7,tag=IsPlaying] ~ ~ ~ /summon Bat ~ ~ ~ {Silent:1}
execute @a[score_Class_min=16,score_Class=16,score_Spell1_min=592,score_Spell1=598,team=Orange] ~ ~ ~ /execute @e[team=Orange,r=7,tag=IsPlaying] ~ ~ ~ /summon Bat ~ ~0.5 ~ {Silent:1}
execute @a[score_Class_min=16,score_Class=16,score_Spell1_min=592,score_Spell1=598,team=Orange] ~ ~ ~ /execute @e[team=Orange,r=7,tag=IsPlaying] ~ ~ ~ /summon Bat ~ ~1 ~
replaceitem entity @a[score_InGame_min=1,score_Class_min=16,score_Class=16,score_EffNoTp_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
replaceitem entity @a[score_InGame_min=1,score_Class_min=16,score_Class=16,score_EffNoMove_min=1,score_Spell3=0,score_Spell3_min=0,m=2] slot.hotbar.3 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=16,score_TouchBy=16,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle enchantmenttable ~ ~1 ~ 0.5 1 0.5 0 20 force
execute @a[score_TouchBy_min=16,score_TouchBy=16,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle reddust ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=16,score_Class=16,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell1 600
scoreboard players set @a[score_Class_min=16,score_Class=16,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=16,score_Class=16,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 -1000
replaceitem entity @a[score_Mana=19,score_Class_min=16,score_Class=16,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=16,score_Class=16,score_UseTp_min=2,score_UseTp=2] Mana 20
replaceitem entity @a[score_Mana=39,score_Class_min=16,score_Class=16,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=16,score_Class=16,score_UseFishing_min=2,score_UseFishing=2] Mana 40
replaceitem entity @a[score_Mana=149,score_Class_min=16,score_Class=16,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=16,score_Class=16,score_UseXp_min=2,score_UseXp=2] Mana 150
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_EffNoTp=0,score_Spell1=0,score_Class_min=16,score_Class=16,m=2] slot.hotbar.1 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Volatile  20✸  30s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=40,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=16,score_Class=16,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Necro Guards  40✸  20s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=150,score_InGame_min=1,score_EffSilence=0,score_EffNoMove=0,score_Spell3=0,score_Spell3_min=0,score_Class_min=16,score_Class=16,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Night Scare  150✸  120s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=16,score_TouchBy=16,team=Orange] ~ ~ ~ /say met death under request of @p[score_Class_min=16,score_Class=16,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=16,score_TouchBy=16,team=Blue] ~ ~ ~ /say met death under request of @p[score_Class_min=16,score_Class=16,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=16,score_TouchBy=16,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=16,score_Class=16,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=16,score_TouchBy=16,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=16,score_Class=16,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1