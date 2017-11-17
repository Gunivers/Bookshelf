#Items
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_EffNoMove=0,score_Class_min=15,score_Class=15,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Wind Asistance  20✸  20s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=15,score_Class=15,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Disturbance  30✸  25s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=120,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=15,score_Class=15,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Cyclone  120✸  60s"},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=19,score_Class_min=15,score_Class=15,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=15,score_Class=15,score_UsePotion_min=2,score_UsePotion=2] Mana 20
replaceitem entity @a[score_Mana=29,score_Class_min=15,score_Class=15,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=15,score_Class=15,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_Mana=119,score_Class_min=15,score_Class=15,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=15,score_Class=15,score_UseXp_min=2,score_UseXp=2] Mana 120

#Cooldown
scoreboard players set @a[score_Class_min=15,score_Class=15,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell1 400
scoreboard players set @a[score_Class_min=15,score_Class=15,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 500
scoreboard players set @a[score_Class_min=15,score_Class=15,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1200

#No Move
replaceitem entity @a[score_InGame_min=1,score_Class_min=15,score_Class=15,score_EffNoMove_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}

#Weapon Updgrade
replaceitem entity @a[score_EffSilencePrim=0,score_UpgradedWeapon_min=1,score_InGame_min=1,score_Class_min=15,score_Class=15,m=2] slot.hotbar.0 wooden_sword 1 0 {Unbreakable:1,ench:[{id:19,lvl:2},{id:16,lvl:0}],display:{Name:"Basic Attack (Upgraded)"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}

#Spell 1
execute @r[score_Class_min=15,score_Class=15,score_Spell1_min=300] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Wind-Spell1

#Spell 2
execute @r[score_Class_min=15,score_Class=15,score_Spell2_min=499] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Wind-Spell2

#Spell 3
execute @r[score_Class_min=15,score_Class=15,score_Spell3_min=1170] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Wind-Spell3
