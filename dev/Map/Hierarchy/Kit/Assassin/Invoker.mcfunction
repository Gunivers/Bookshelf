#Items
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_EffNoTp=0,score_Spell1=0,score_Class_min=16,score_Class=16,m=2] slot.hotbar.1 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Volatile  20✸  30s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=40,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=16,score_Class=16,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Necro Guards  40✸  20s"},HideFlags:63}
replaceitem entity @a[score_Mana_min=150,score_InGame_min=1,score_EffSilence=0,score_EffNoMove=0,score_Spell3=0,score_Spell3_min=0,score_Class_min=16,score_Class=16,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Night Scare  150✸  120s"},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=19,score_Class_min=16,score_Class=16,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=16,score_Class=16,score_UseTp_min=2,score_UseTp=2] Mana 20
replaceitem entity @a[score_Mana=39,score_Class_min=16,score_Class=16,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=16,score_Class=16,score_UseFishing_min=2,score_UseFishing=2] Mana 40
replaceitem entity @a[score_Mana=149,score_Class_min=16,score_Class=16,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=16,score_Class=16,score_UseXp_min=2,score_UseXp=2] Mana 150

#Cooldown
scoreboard players set @a[score_Class_min=16,score_Class=16,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell1 600
scoreboard players set @a[score_Class_min=16,score_Class=16,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=16,score_Class=16,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 -1000

#No Move
replaceitem entity @a[score_InGame_min=1,score_Class_min=16,score_Class=16,score_EffNoTp_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
replaceitem entity @a[score_InGame_min=1,score_Class_min=16,score_Class=16,score_EffNoMove_min=1,score_Spell3=0,score_Spell3_min=0,m=2] slot.hotbar.3 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}

#Spell 1
execute @r[score_Class_min=16,score_Class=16,score_Spell1_min=592] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Invoker-Spell1

#Spell 2
execute @r[score_Class_min=16,score_Class=16,score_Spell2_min=399] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Invoker-Spell2

execute @e[type=Skeleton,tag=162R] ~ ~ ~ /scoreboard players set @a[score_InGame_min=1,m=2,r=2,team=Blue] TouchBy 16
execute @e[type=Skeleton,tag=162B] ~ ~ ~ /scoreboard players set @a[score_InGame_min=1,m=2,r=2,team=Orange] TouchBy 16

#Spell 3
execute @r[score_Class_min=16,score_Class=16,score_Spell3=-1] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Assassin/Invoker-Spell3


