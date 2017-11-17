#Items
replaceitem entity @a[score_Mana_min=40,score_InGame_min=1,score_EffSilence=0,score_EffNoTp=0,score_Spell1=0,score_Class_min=14,score_Class=14,m=2] slot.hotbar.1 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Transparency  40✸  25s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=25,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=14,score_Class=14,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Winter Silence  25✸  15s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=70,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=14,score_Class=14,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Cooling  70✸  45s"},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=39,score_Class_min=14,score_Class=14,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=14,score_Class=14,score_UseTp_min=2,score_UseTp=2] Mana 40
replaceitem entity @a[score_Mana=24,score_Class_min=14,score_Class=14,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=14,score_Class=14,score_UseFishing_min=2,score_UseFishing=2] Mana 25
replaceitem entity @a[score_Mana=69,score_Class_min=14,score_Class=14,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=14,score_Class=14,score_UseXp_min=2,score_UseXp=2] Mana 70

#Cooldown
scoreboard players set @a[score_Class_min=14,score_Class=14,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell1 500
scoreboard players set @a[score_Class_min=14,score_Class=14,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 300
scoreboard players set @a[score_Class_min=14,score_Class=14,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 900

#No Move
replaceitem entity @a[score_InGame_min=1,score_Class_min=14,score_Class=14,score_EffNoTp_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}

#Spell 1
execute @a[score_Class_min=14,score_Class=14,score_Spell1_min=499] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Freezer-Spell1

#Spell 2
execute @a[score_Class_min=14,score_Class=14,score_Spell2_min=298] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Freezer-Spell2

#Spell 3
execute @a[score_Class_min=14,score_Class=14,score_Spell3_min=790] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Freezer-Spell3





