#Items
replaceitem entity @a[score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=6,score_Class=6,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Archer Army  90✸  15s",Lore:["۞ 30 Mana","","+ Spawn 3 archer skeletons"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=6,score_Class=6,m=2] slot.hotbar.2 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Vital Energy Zone  20✸  20s",Lore:["۞ 20 Mana","","⚔ 2 Poison 1s ▢ Area Range 5","☀ 2 Slow 1s ▢ Area Range 5","+ 20% Protection 1s ▢ Area Range 5"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=90,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=6,score_Class=6,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Fountain of Youth  30✸  90s",Lore:["۞ 90 Mana","","❤ 6 Heal ▢ Range 10","⚔ 6 Damage ▢ Range 10","☀ Stunt 2s ▢ Range 10","☀ Blindness 2s ▢ Range 10"]},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=89,score_Class_min=6,score_Class=6,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=6,score_Class=6,score_UseXp_min=2,score_UseXp=2] Mana 90
replaceitem entity @a[score_Mana=19,score_Class_min=6,score_Class=6,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=6,score_Class=6,score_UsePotion_min=2,score_UsePotion=2] Mana 20
replaceitem entity @a[score_Mana=29,score_Class_min=6,score_Class=6,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=6,score_Class=6,score_UseFishing_min=2,score_UseFishing=2] Mana 30

#Cooldown
scoreboard players set @a[score_Class_min=6,score_Class=6,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 300
scoreboard players set @a[score_Class_min=6,score_Class=6,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=6,score_Class=6,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1800

#Spell 1

execute @r[score_Class_min=6,score_Class=6,score_Spell1_min=198] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Invoker-Spell1

#Spell 2
execute @r[score_Class_min=6,score_Class=6,score_Spell2_min=299] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Invoker-Spell2


#Spell 3
execute @r[score_Class_min=6,score_Class=6,score_Spell3_min=1799] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Invoker-Spell3

