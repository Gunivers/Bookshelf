#Items
replaceitem entity @a[score_Mana_min=60,score_InGame_min=1,score_EffSilence=0,score_Spell1_min=0,score_Spell1=0,score_Class_min=4,score_Class=4,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Water Transformation  40✸  30s",Lore:["۞ 60 Mana","... 30s","","❤ 2 Regeneration 3s","","» Fly 15s","❤ 20% Protection 15s","","⚔ 6 Damage ▢ Range 7"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell1=-1,score_Class_min=4,score_Class=4,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Abort Water Transformation"},HideFlags:63}
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=4,score_Class=4,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Refresh  20✸  5s",Lore:["۞ 20 Mana","... 5s","","⚔ 6 Damage ▢ Range 5","","☀ 2 Slow 1s ▢ Range 5"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=40,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=4,score_Class=4,m=2] slot.hotbar.3 minecraft:snowball 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Winter Blast  60✸  45s",Lore:["۞ 40 Mana","... 45s","","⚔ 6 Damage ▢ Lancable Range 3","☀ Stun 3s ▢ Lancable Range 3","","⚔ 2 Poison 1s ▢ Lancable Impact Range 3","☀ 2 Slow 1s ▢ Lancable Impact Range 3"]},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=39,score_Class_min=4,score_Class=4,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=4,score_Class=4,score_UseSnowball_min=2,score_UseSnowball=2] Mana 40
replaceitem entity @a[score_Mana=19,score_Class_min=4,score_Class=4,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=4,score_Class=4,score_UseFishing_min=2,score_UseFishing=2] Mana 20
replaceitem entity @a[score_Mana=59,score_Class_min=4,score_Class=4,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=4,score_Class=4,score_Spell1_min=-198,score_Spell1=-198] Mana 60

#Cooldown
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,score_Spell1_min=0,score_Spell1=0,m=2] Spell1 -200
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,score_Spell1=-200,m=2] UsePotion 0
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 100
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UseSnowball_min=2,score_UseSnowball=2,score_InGame_min=1,m=2] Spell3 900

#Spell 1
execute @r[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1=-1] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Freezer-Spell1


#Spell 2
execute @r[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=40] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Freezer-Spell2


#Spell 3
execute @r[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell3_min=800] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Freezer-Spell3




