execute @e[type=Silverfish,tag=133G] ~ ~ ~ /particle spell ~ ~ ~7 4 2 0 0 20
execute @e[type=Silverfish,tag=133G] ~ ~ ~ /particle spell ~7 ~ ~ 0 2 4 0 20
execute @e[type=Silverfish,tag=133G] ~ ~ ~ /particle spell ~ ~ ~-7 4 2 0 0 20
execute @e[type=Silverfish,tag=133G] ~ ~ ~ /particle spell ~-7 ~ ~ 0 2 4 0 20
#Items
replaceitem entity @a[score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=13,score_Class=13,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Thunder Bolt  30✸  20s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=50,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=13,score_Class=13,m=2] slot.hotbar.2 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Static  50✸  25s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=90,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=13,score_Class=13,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Electron  90✸  60s"},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=29,score_Class_min=13,score_Class=13,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=13,score_Class=13,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_Mana=49,score_Class_min=13,score_Class=13,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=13,score_Class=13,score_UseCarrot_min=2,score_UseCarrot=2] Mana 50
replaceitem entity @a[score_Mana=89,score_Class_min=13,score_Class=13,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=13,score_Class=13,score_UseXp_min=2,score_UseXp=2] Mana 90

#Cooldown
scoreboard players set @a[score_Class_min=13,score_Class=13,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 400
scoreboard players set @a[score_Class_min=13,score_Class=13,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell2 500
scoreboard players set @a[score_Class_min=13,score_Class=13,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1200

#Weapon upgrade
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=13,score_Class=13,score_UpgradedWeapon_min=1,m=2] slot.hotbar.0 diamond_sword 1 0 {Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Name:"Basic Attack"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}

#Spell 1
execute @r[score_Class_min=13,score_Class=13,score_Spell1_min=382] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Thunder-Spell1

#Spell 2
scoreboard players tag @e[type=armor_stand,score_Class_min=13,score_Class=13] add AT2G
scoreboard players tag @e[type=armor_stand,score_Class_min=-13,score_Class=-13] add AT2G
execute @e[c=1,type=armor_stand,tag=AT2G] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Thunder-Spell2


#Spell 3
execute @r[score_Class_min=13,score_Class=13,score_Spell3_min=1060] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Thunder-Spell3


