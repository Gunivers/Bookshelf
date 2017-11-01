scoreboard players set @e[type=armor_stand,score_Class_min=-5,score_Class=-5] DirCollision 1
scoreboard players set @e[type=armor_stand,score_Class_min=-5,score_Class=-5] DirSpeed 80
execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /teleport @e[type=!Villager,team=Orange,tag=IsPlaying,r=6] ~ ~2 ~
execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=5,score_EffPoison=1005] EffPoison 1005
execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=5] TouchBy 5
scoreboard players remove @e[type=armor_stand,score_Class_min=-5,score_Class=-5,score_DirY_min=20] DirY 20
execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=5,score_EffFall=100] EffFall 100
scoreboard players set @e[score_InGame_min=1,score_Class_min=5,score_Class=5,score_Spell3_min=799,m=2,score_EffSpeed=1060] EffSpeed 1060
scoreboard players set @e[score_InGame_min=1,score_Class_min=5,score_Class=5,score_Spell3_min=799,m=2,score_EffJump=1060] EffJump 1060
scoreboard players set @e[type=armor_stand,score_Class_min=5,score_Class=5] DirCollision 1
scoreboard players set @e[type=armor_stand,score_Class_min=5,score_Class=5] DirSpeed 80
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /teleport @e[type=!Villager,team=Blue,tag=IsPlaying,r=6] ~ ~2 ~
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=5,score_EffPoison=1005] EffPoison 1005
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=5] TouchBy 5
scoreboard players remove @e[type=armor_stand,score_Class_min=5,score_Class=5,score_DirY_min=20] DirY 20
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=5,score_EffFall=100] EffFall 100
execute @e[score_InGame_min=1,score_Class_min=5,score_Class=5,score_Spell2=499,score_Spell2_min=499,m=2,team=Blue] ~ ~ ~ /effect @a[team=Blue,r=10,tag=IsPlaying] instant_health 1 1 true
execute @e[score_InGame_min=1,score_Class_min=5,score_Class=5,score_Spell2=499,score_Spell2_min=499,m=2] ~ ~ ~ /playsound entity.zombie.infect record @a[r=10] ~ ~ ~ 2 2 1
execute @e[score_InGame_min=1,score_Class_min=5,score_Class=5,score_Spell2=499,score_Spell2_min=499,m=2,team=Orange] ~ ~ ~ /effect @a[team=Orange,r=10,tag=IsPlaying] instant_health 1 1 true
execute @a[score_Class_min=5,score_Class=5,score_Spell1=298,score_Spell1_min=298,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /effect @e[team=!Blue,tag=IsPlaying,r=7] levitation 1 10 true
execute @a[score_Class_min=5,score_Class=5,score_Spell1=298,score_Spell1_min=298,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=7] TouchBy 5
execute @a[score_Class_min=5,score_Class=5,score_Spell1=298,score_Spell1_min=298,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=7,score_EffFall=100] EffFall 100
execute @e[score_Class_min=5,score_Class=5,score_InGame_min=1,m=2,score_Spell1_min=299] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
execute @a[score_Class_min=5,score_Class=5,score_Spell1=298,score_Spell1_min=298,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /effect @e[team=!Orange,tag=IsPlaying,r=7] levitation 1 10 true
execute @a[score_Class_min=5,score_Class=5,score_Spell1=298,score_Spell1_min=298,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=7] TouchBy 5
execute @a[score_Class_min=5,score_Class=5,score_Spell1=298,score_Spell1_min=298,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=7,score_EffFall=100] EffFall 100
replaceitem entity @a[score_InGame_min=1,score_Class_min=5,score_Class=5,score_EffNoTp_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=5,score_TouchBy=5,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle snowshovel ~ ~1 ~ 1 1 1 0.1 10 force
execute @a[score_TouchBy_min=5,score_TouchBy=5,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle cloud ~ ~1 ~ 0.5 1 0.5 0 10 force
scoreboard players set @a[score_Class_min=5,score_Class=5,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell1 300
scoreboard players set @a[score_Class_min=5,score_Class=5,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 500
scoreboard players set @a[score_Class_min=5,score_Class=5,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell3 800
replaceitem entity @a[score_Mana=59,score_Class_min=5,score_Class=5,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=5,score_Class=5,score_UseCarrot_min=2,score_UseCarrot=2] Mana 60
replaceitem entity @a[score_Mana=29,score_Class_min=5,score_Class=5,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=5,score_Class=5,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_EffNoTp=0,score_Mana=24,score_Class_min=5,score_Class=5,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=5,score_Class=5,score_UseTp_min=2,score_UseTp=2] Mana 25
replaceitem entity @a[score_Mana_min=25,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=5,score_Class=5,m=2,score_EffNoTp=0] slot.hotbar.1 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Turbulence  60✸  15s",Lore:["۞ Mana","","⚔"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=5,score_Class=5,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Wind Care  30✸  25s",Lore:["۞ Mana","",""]},HideFlags:63}
replaceitem entity @a[score_Mana_min=60,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=5,score_Class=5,m=2] slot.hotbar.3 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Tornado  25✸  40s",Lore:["۞ Mana","",""]},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=5,score_TouchBy=5,team=Orange] ~ ~ ~ /say got carried away by the breath of @p[score_Class_min=5,score_Class=5,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=5,score_TouchBy=5,team=Blue] ~ ~ ~ /say got carried away by the breath of @p[score_Class_min=5,score_Class=5,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=5,score_TouchBy=5,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=5,score_Class=5,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=5,score_TouchBy=5,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=5,score_Class=5,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1