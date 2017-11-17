# Kill score


# Give item
replaceitem entity @a[score_Mana_min=50,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=1,score_Class=1,m=2] slot.hotbar.1 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Temporal Paradox  70✸  10s",Lore:["۞ 50 Mana","... 10s","","⚔ 3 Damage ▢ Lancable Range 3"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=40,score_InGame_min=1,score_EffSilence=0,score_EffNoTp=0,score_Spell2=0,score_Class_min=1,score_Class=1,m=2] slot.hotbar.2 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Vortex  40✸  15s",Lore:["۞ 40 Mana","... 15s","","☀ Random teleport ▢ Range 5","☀ Stun 2s ▢ Range 5","","» Teleport ▢ Lancable"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=70,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=1,score_Class=1,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Checkpoint  50✸  45s",Lore:["۞ 70 Mana","... 45s","","❤ 24 Heal","⚔ 3 Damage ▢ Range 3","☀ EffSilence 1s ▢ Range 3","» Return 5s in past","+ Cooldown reset"]},HideFlags:63}

# Mana
replaceitem entity @a[score_Mana=69,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=1,score_Class=1,score_UseXp_min=2,score_UseXp=2] Mana 70
replaceitem entity @a[score_EffNoTp=0,score_Mana=39,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=1,score_Class=1,score_UseTp_min=2,score_UseTp=2] Mana 40
replaceitem entity @a[score_Mana=49,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=1,score_Class=1,score_UseCarrot_min=2,score_UseCarrot=2] Mana 50

# Cooldown
scoreboard players set @a[score_Class_min=1,score_Class=1,score_UseCarrot_min=1,score_UseCarrot_min=1,m=2] Spell1 200
scoreboard players set @a[score_Class_min=1,score_Class=1,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell2 300
scoreboard players set @a[score_Class_min=1,score_Class=1,score_UseXp_min=1,score_InGame_min=1,m=2] Spell3 900

# NoMove
replaceitem entity @a[score_InGame_min=1,score_Class_min=1,score_Class=1,score_EffNoTp_min=1,score_Spell2=0,m=2] slot.hotbar.2 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}

# Spell 1
scoreboard players tag @e[type=armor_stand,score_Class_min=-1,score_Class=-1] add MT1G
scoreboard players tag @e[type=armor_stand,score_Class_min=1,score_Class=1] add MT1G
execute @a[score_Class_min=1,score_Class=1,score_UseCarrot_min=2,score_UseCarrot=2] ~ ~ ~ /playsound entity.elder_guardian.death record @a[r=30] ~ ~ ~ 2 1 1

execute @r[type=armor_stand,tag=MT1G] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/kit/mage/time-spell1



# Spell 2
execute @r[score_Class_min=1,score_Class=1,score_Spell2=299,score_Spell2_min=299,score_InGame_min=1,m=2] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/kit/mage/time-spell2



# Spell 3
execute @r[score_Class_min=1,score_Class=1,m=2,score_Spell3=100] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/kit/mage/time-spell3bis
execute @r[score_Class_min=1,score_Class=1,m=2,score_Spell3_min=890] ~ ~ ~ /function gunivers-lib:dev/map/hierarchy/kit/mage/time-spell3






