#Items
replaceitem entity @a[score_Mana_min=15,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=12,score_Class=12,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Flaming Touch  15✸  20s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_EffNoMove=0,score_Spell2=0,score_Class_min=12,score_Class=12,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Fuse  20✸  15s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=90,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=12,score_Class=12,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Ignition  90✸  45s"},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=14,score_Class_min=12,score_Class=12,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=12,score_Class=12,score_UsePotion_min=2,score_UsePotion=2] Mana 15
replaceitem entity @a[score_Mana=19,score_Class_min=12,score_Class=12,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=12,score_Class=12,score_UseFishing_min=2,score_UseFishing=2] Mana 20
replaceitem entity @a[score_Mana=89,score_Class_min=12,score_Class=12,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=12,score_Class=12,score_UseXp_min=2,score_UseXp=2] Mana 90

#Cooldown
scoreboard players set @a[score_Class_min=12,score_Class=12,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell1 400
scoreboard players set @a[score_Class_min=12,score_Class=12,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 300
scoreboard players set @a[score_Class_min=12,score_Class=12,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 900

#No Move
replaceitem entity @a[score_InGame_min=1,score_Class_min=12,score_Class=12,score_EffNoMove_min=1,score_Spell2=0,m=2] slot.hotbar.2 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}

#Weapon Upgrade
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=12,score_Class=12,score_UpgradedWeapon_min=1,m=2] slot.hotbar.0 golden_sword 1 0 {Unbreakable:1,ench:[{id:19,lvl:1},{id:20,lvl:2},{id:16,lvl:0}],display:{Name:"Basic Attack (Upgraded)"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}

#Spell 1
execute @r[m=2,score_Class_min=12,score_Class=12,score_Spell1_min=399] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Burner-Spell1

#Spell 2
execute @r[score_Class_min=12,score_Class=12,score_Spell2_min=278,m=2] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Burner-Spell2

#Spell 2
execute @r[score_Class_min=12,score_Class=12,score_Spell3_min=800,m=2] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Burner-Spell3
