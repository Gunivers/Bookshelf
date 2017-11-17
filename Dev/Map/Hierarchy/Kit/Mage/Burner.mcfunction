#Fireball
scoreboard players tag @e[type=armor_stand,score_Class_min=-2,score_Class=-2] add MBG
scoreboard players tag @e[type=armor_stand,score_Class_min=2,score_Class=2] add MBG
execute @e[c=1,type=armor_stand,tag=MBG] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Burner-Fireball

#Items
replaceitem entity @a[score_Mana_min=25,score_InGame_min=1,score_EffSilence=0,score_EffNoMove=0,score_Spell1=0,score_Class_min=2,score_Class=2,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Fire Spirit  80✸  15s",Lore:["۞ 25 Mana","... 10s","","❤ 4 HaveShield 5s","❤ 20% Protection 5s","» 2 Speed 5s","⚔ 2 Poison 1s ▢ Trail Range 1"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=10,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=2,score_Class=2,m=2] slot.hotbar.2 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Fireball  10✸  10s",Lore:["۞ 10 Mana","... 5s","","⚔ 1 - 11 Damage ▢ Lancable Impact Range 5","☀ Knockback ▢ Lancable Impact Range 5"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=80,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=2,score_Class=2,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Meteor  25✸  75s",Lore:["۞ 80 Mana","... 75s","","⚔ 0 - 14 Damage ▢ All Es"]},HideFlags:63}

#Mana
replaceitem entity @a[score_Mana=79,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=2,score_Class=2,score_UseXp_min=2,score_UseXp=2] Mana 80
replaceitem entity @a[score_Mana=9,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=2,score_Class=2,score_UseCarrot_min=2,score_UseCarrot=2] Mana 10
replaceitem entity @a[score_EffNoMove=0,score_Mana=24,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=2,score_Class=2,score_UseFishing_min=2,score_UseFishing=2] Mana 25

#Cooldown
scoreboard players set @a[score_Class_min=2,score_Class=2,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 300
scoreboard players set @a[score_Class_min=2,score_Class=2,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell2 200
scoreboard players set @a[score_Class_min=2,score_Class=2,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1500

#No Move
replaceitem entity @a[score_InGame_min=1,score_Class_min=2,score_Class=2,score_EffNoMove_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}

# Spell 1
execute @r[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell1_min=160] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Burner-Spell1

# Spell 2
execute @r[score_InGame_min=1,score_Class_min=2,score_Class=2,score_Spell2_min=198,score_Spell2=198,m=2] ~ ~ ~ /playsound entity.firework.blast record @a[r=10] ~ ~ ~ 2 0.5 1

# Spell 3
execute @r[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1] ~ ~ ~ /function Gunivers-Lib:Dev/Map/Hierarchy/Kit/Mage/Burner-Spell3










