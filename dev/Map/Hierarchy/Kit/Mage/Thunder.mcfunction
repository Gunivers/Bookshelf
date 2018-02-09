#Items
replaceitem entity @a[score_Mana_min=15,score_InGame_min=1,score_EffSilence=0,score_EffNoMove=0,score_Spell1=0,score_Class_min=3,score_Class=3,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Electrical Speed  50✸  7s",Lore:["۞ 15 Mana","... 7s","","» Dash 1s","☀ Stun 1s ▢ Range 1","+ Mark Es ▢ Range 1"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=25,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=3,score_Class=3,m=2] slot.hotbar.2 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Strike  25✸  5s",Lore:["۞ 25 Mana","... 5s","","⚔ 3 - 5 Damage ▢ All Es Marked","","+ Mark Es ▢ Lancable Range 3"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=50,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=3,score_Class=3,m=2] slot.hotbar.3 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Tempest  15✸  60s",Lore:["۞ 50 Mana","... 60s","","⚔ 3 - 25 Damage ▢ Area Range 7","☀ 2 Slow 1s ▢ Area Range 7","☀ No teleport ▢ Area Range 7"]},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=49,score_Class_min=3,score_Class=3,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=3,score_Class=3,score_UsePotion_min=2,score_UsePotion=2] Mana 50
replaceitem entity @a[score_Mana=24,score_Class_min=3,score_Class=3,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=3,score_Class=3,score_UseCarrot_min=2,score_UseCarrot=2] Mana 25
replaceitem entity @a[score_EffNoMove=0,score_Mana=14,score_Class_min=3,score_Class=3,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=3,score_Class=3,score_UseFishing_min=2,score_UseFishing=2] Mana 15

#Cooldown
scoreboard players set @a[score_Class_min=3,score_Class=3,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 140
scoreboard players set @a[score_Class_min=3,score_Class=3,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell2 100
scoreboard players set @a[score_Class_min=3,score_Class=3,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell3 1200

#No Move
replaceitem entity @a[score_InGame_min=1,score_Class_min=3,score_Class=3,score_EffNoMove_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}

#Spell 1
execute @r[score_InGame_min=1,score_Class_min=3,score_Class=3,score_Spell1_min=119] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Thunder-Spell1

#Spell2
execute @r[score_InGame_min=1,score_Class_min=3,score_Class=3,score_Spell2_min=60] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Thunder-Spell2

#Spell3
execute @r[score_InGame_min=1,score_Class_min=3,score_Class=3,score_Spell3_min=1100] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Thunder-Spell3

