#Items
replaceitem entity @a[score_Mana_min=25,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=5,score_Class=5,m=2,score_EffNoTp=0] slot.hotbar.1 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Turbulence  60✸  15s",Lore:["۞ Mana","","⚔"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=5,score_Class=5,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Wind Care  30✸  25s",Lore:["۞ Mana","",""]},HideFlags:63}
replaceitem entity @a[score_Mana_min=60,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=5,score_Class=5,m=2] slot.hotbar.3 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Tornado  25✸  40s",Lore:["۞ Mana","",""]},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=59,score_Class_min=5,score_Class=5,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=5,score_Class=5,score_UseCarrot_min=2,score_UseCarrot=2] Mana 60
replaceitem entity @a[score_Mana=29,score_Class_min=5,score_Class=5,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=5,score_Class=5,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_EffNoTp=0,score_Mana=24,score_Class_min=5,score_Class=5,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=5,score_Class=5,score_UseTp_min=2,score_UseTp=2] Mana 25

#Cooldown
scoreboard players set @a[score_Class_min=5,score_Class=5,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell1 300
scoreboard players set @a[score_Class_min=5,score_Class=5,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 500
scoreboard players set @a[score_Class_min=5,score_Class=5,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell3 800

#No Move
replaceitem entity @a[score_InGame_min=1,score_Class_min=5,score_Class=5,score_EffNoTp_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}

#Spell1
execute @r[score_Class_min=5,score_Class=5,score_InGame_min=1,m=2,score_Spell1_min=298] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Wind-Spell1

#Spell 2
execute @r[score_InGame_min=1,score_Class_min=5,score_Class=5,score_Spell2=499,score_Spell2_min=499,m=2] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Wind-Spell2

#Spell 3
scoreboard players tag @e[type=armor_stand,score_Class_min=-5,score_Class=-5] add MW3G
scoreboard players tag @e[type=armor_stand,score_Class_min=5,score_Class=5] add MW3G
execute @r[type=armor_stand,,tag=MW3G] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Wind-Spell3

