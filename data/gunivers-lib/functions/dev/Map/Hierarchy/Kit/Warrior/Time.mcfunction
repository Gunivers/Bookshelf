execute @e[tag=IsPlaying,team=Blue,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_EffPoison=1002] EffPoison 1002
execute @e[tag=IsPlaying,team=Blue,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_EffSlow=1002] EffSlow 1002
execute @e[tag=IsPlaying,team=Blue,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10] TouchBy 31
execute @e[tag=IsPlaying,team=Blue,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Blue,r=10,score_EffResistance=2002] EffResistance 2002
execute @e[tag=IsPlaying,team=Blue,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_Timer_min=1,score_Timer=1] EffDamage 2
execute @e[tag=IsPlaying,team=Blue,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_Timer_min=21,score_Timer=21] EffDamage 2
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /particle depthsuspend ~ ~-1 ~ 5 0.5 5 0 30 force
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /particle witchMagic ~ ~-1 ~ 5 0.5 5 0 30 force
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /particle largesmoke ~ ~-1 ~ 0.5 0.5 0.5 0 2 force
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /summon Falling_block ~ ~-1 ~ {Block:"minecraft:coal_block"}
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /playsound minecraft:entity.enderdragon.growl record @a[r=30] ~ ~ ~ 0.4 0.5 0.1
effect @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1280,score_Spell3=1380] levitation 1 255 true
effect @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1399,score_Spell3_min=1399] levitation 1 2 true
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1380,score_Spell3_min=1380] ~ ~ ~ /summon armor_stand ~ ~ ~ {Tags:["313G"],NoGravity:1,Marker:1,Invisible:1}
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1380,score_Spell3=1380] ~ ~ ~ /tp @e[type=armor_stand,c=1,tag=313G] @p[r=1]
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260,score_Spell3=1380] ~ ~ ~ /tp @p[r=1] @e[type=armor_stand,c=1,tag=313G]
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[type=armor_stand,c=1,tag=313G] Timer 35
tp @e[tag=313G] ~ ~ ~ ~ ~3
scoreboard players set @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260,score_EffSilence=2] EffSilence 2
scoreboard players set @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1260,score_EffSilencePrim=3] EffSilencePrim 3
scoreboard players tag @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell3_min=1280,score_Spell3=1380] add NoFall
execute @e[tag=IsPlaying,team=Orange,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_EffPoison=1002] EffPoison 1002
execute @e[tag=IsPlaying,team=Orange,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_EffSlow=1002] EffSlow 1002
execute @e[tag=IsPlaying,team=Orange,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10] TouchBy 31
execute @e[tag=IsPlaying,team=Orange,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Orange,r=10,score_EffResistance=2002] EffResistance 2002
execute @e[tag=IsPlaying,team=Orange,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_Timer_min=1,score_Timer=1] EffDamage 2
execute @e[tag=IsPlaying,team=Orange,score_Class_min=31,score_Class=31,score_Spell3_min=1260] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_Timer_min=21,score_Timer=21] EffDamage 2
scoreboard players set @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell2_min=399] EffResistance 1100
execute @a[team=Blue,tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,score_EffPoison=2,r=5] EffPoison 2
execute @a[team=Blue,tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440,score_Spell1=440] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,score_EffDamage=2,r=5] EffDamage 2
execute @a[team=Blue,tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=5] TouchBy 31
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440] ~ ~ ~ /particle witchMagic ~ ~ ~ 3 0 3 0 10 force
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440] ~ ~ ~ /particle depthsuspend ~ ~ ~ 3 0 3 0 10 force
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440,score_Spell1=440] ~ ~ ~ /particle witchMagic ~ ~1.5 ~ 1 2 1 2 500 force
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440,score_Spell1=440] ~ ~ ~ /particle depthsuspend ~ ~1.5 ~ 1 2 1 1 500 force
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=499,score_Spell1=499] ~ ~ ~ /playsound minecraft:entity.ghast.warn record @a[r=30] ~ ~ ~ 1 0.5 1
execute @a[tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440,score_Spell1=440] ~ ~ ~ /playsound minecraft:entity.endermen.scream record @a[r=30] ~ ~ ~ 1 2 1
execute @a[team=Orange,tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,score_EffPoison=2,r=5] EffPoison 2
execute @a[team=Orange,tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440,score_Spell1=440] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,score_EffDamage=2,r=5] EffDamage 2
execute @a[team=Orange,tag=IsPlaying,score_Class_min=31,score_Class=31,score_Spell1_min=440] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=5] TouchBy 31
replaceitem entity @a[score_InGame_min=1,score_Class_min=31,score_Class=31,score_EffNoTp_min=1,score_Spell2=0,m=2] slot.hotbar.2 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=31,score_TouchBy=31,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle depthsuspend ~ ~1 ~ 0.5 1 0.5 0 20 force
execute @a[score_TouchBy_min=31,score_TouchBy=31,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle witchMagic ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=31,score_Class=31,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell1 500
scoreboard players set @a[score_Class_min=31,score_Class=31,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=31,score_Class=31,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1400
replaceitem entity @a[score_Mana=19,score_Class_min=31,score_Class=31,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=31,score_Class=31,score_UsePotion_min=2,score_UsePotion=2] Mana 20
replaceitem entity @a[score_Mana=29,score_Class_min=31,score_Class=31,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=31,score_Class=31,score_UseTp_min=2,score_UseTp=2] Mana 30
replaceitem entity @a[score_Mana=69,score_Class_min=31,score_Class=31,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=31,score_Class=31,score_UseXp_min=2,score_UseXp=2] Mana 70
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=31,score_Class=31,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Distortion  20✸  25s",Lore:["۞ 20 Mana","... 25s Cooldown","","⚔ 1 Poison ▢ Range 5","","⚔ 1 Damage ▢ Range 5"]},HideFlags:63}
replaceitem entity @a[score_EffNoTp=0,score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=31,score_Class=31,m=2] slot.hotbar.2 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Wormhole  30✸  20s",Lore:["۞ 30 Mana","... 20s Cooldown","","» Teleport","❤ 40% Resistance 5s"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=70,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=31,score_Class=31,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Singularity  70✸  70s",Lore:["۞ 70 Mana","... 70s Cooldown","","❤ 40% Resistance 7s","⚔ 2 Poison ▢ Range 10","☀ 2 Slow 1s ▢ Range 10","- Stun 7s"]},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=31,score_TouchBy=31,team=Orange] ~ ~ ~ /say 's existence has been erased by @p[score_Class_min=31,score_Class=31,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=31,score_TouchBy=31,team=Blue] ~ ~ ~ /say 's existence has been erased by @p[score_Class_min=31,score_Class=31,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=31,score_TouchBy=31,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=31,score_Class=31,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=31,score_TouchBy=31,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=31,score_Class=31,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1