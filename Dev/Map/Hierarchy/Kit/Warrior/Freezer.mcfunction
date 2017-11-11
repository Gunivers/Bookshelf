execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_EffPoison=1020] EffPoison 1020
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10] TouchBy 34
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Blue,score_IsDead_min=2] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Blue,score_EffRegen=1060] EffRegen 1060
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_EffSlow_min=2000,score_EffSlow=3040] EffSlow 3040
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_EffSlow_min=1000,score_EffSlow=1999] EffSlow 2040
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_EffSlow_min=1,score_EffSlow=999] EffSlow 1040
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=10,score_EffSlow=0] EffSlow 40
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260] ~ ~ ~ /particle fireworksSpark ~ ~1 ~ 0.1 0.7 0.1 0 3 force
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260] ~ ~ ~ /summon Falling_Block ~ ~ ~ {NoGravity:1,Block:"minecraft:snow_layer",Tags:["WF3G"],Time:500}
execute @e[tag=WF3G] ~ ~ ~ detect ~ ~-0.1 ~ air 0 /kill @s
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260] ~ ~ ~ /playsound block.snow.fall record @a[r=15] ~ ~ ~ 2 1 1
scoreboard players set @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_EffSpeed=1002] EffSpeed 1002
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_EffPoison=1020] EffPoison 1020
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10] TouchBy 34
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Orange,score_IsDead_min=2] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Orange,score_EffRegen=1060] EffRegen 1060
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_EffSlow_min=2000,score_EffSlow=3040] EffSlow 3040
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_EffSlow_min=1000,score_EffSlow=1999] EffSlow 2040
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_EffSlow_min=1,score_EffSlow=999] EffSlow 1040
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell3_min=1260,score_TakeDamage_min=1999,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=10,score_EffSlow=0] EffSlow 40
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,team=Blue] ~ ~ ~ /execute @e[tag=IsPlaying,team=Blue] ~ ~ ~ /particle fireworksSpark ~ ~0.1 ~ 0.5 0 0.5 0 3 force
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Blue,score_EffSpeed=1002] EffSpeed 1002
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Orange,score_EffSlow=2] EffSlow 2
effect @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=320] slowness 1 127 true
scoreboard players set @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,score_EffRegen=1002] EffRegen 1002
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300] ~ ~ ~ /summon Falling_Block ~ ~ ~ {NoGravity:1,Block:"minecraft:ice",Tags:["Hat"],Time:0}
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300] ~ ~ ~ /summon Falling_Block ~ ~1 ~ {NoGravity:1,Block:"minecraft:ice",Tags:["Hat"],Time:0}
scoreboard players set @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,score_EffInvulnerable=2] EffInvulnerable 2
effect @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=320] jump_boost 1 128 true
scoreboard players set @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,score_EffSilence=2] EffSilence 2
scoreboard players set @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,score_EffSilencePrim=2] EffSilencePrim 2
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,score_Spell2=300] ~ ~ ~ playsound block.glass.break record @a[r=15] ~ ~ ~ 2 1 1
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,score_Spell2=300] ~ ~ ~ particle blockcrack ~ ~1 ~ 0.5 1 0.5 0 200 force @a 79
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=399,score_Spell2=399] ~ ~ ~ playsound entity.blaze.ambient record @a[r=15] ~ ~ ~ 2 2 1
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,team=Orange] ~ ~ ~ /execute @e[tag=IsPlaying,team=Orange] ~ ~ ~ /particle fireworksSpark ~ ~0.1 ~ 0.5 0 0.5 0 3 force
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Orange,score_EffSpeed=1002] EffSpeed 1002
execute @a[tag=IsPlaying,score_Class_min=34,score_Class=34,score_Spell2_min=300,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Blue,score_EffSlow=2] EffSlow 2
execute @e[tag=AffectByBlue] ~ ~ ~ /scoreboard players tag @e[type=armor_stand,score_Class_min=-34,score_Class=-34,r=3,score_Timer_min=0] add DirCollision
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer=-140] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,score_EffRegen=1020,r=5] EffRegen 1020
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer=-140] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,score_EffSpeed=1020,r=5] EffSpeed 1020
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,score_EffDamage=2,r=5] EffDamage 2
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,score_EffSlow=3040,r=5] EffSlow 3040
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=5] TouchBy 34
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer_min=-141] ~ ~ ~ particle fireworksSpark ~ ~ ~ 0.3 0.3 0.3 0.1 15 force @a
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer_min=-141] ~ ~ ~ particle fireworksSpark ~ ~ ~ 0.3 0.3 0.3 0.1 15 force @a
scoreboard players set @e[type=Armor_Stand,score_Class_min=34,score_Class=34] DirCollision 5
scoreboard players set @e[type=Armor_Stand,score_Class_min=-34,score_Class=-34] DirCollision 5
scoreboard players set @e[type=armor_stand,tag=DirCollision,score_Class_min=34,score_Class=34] Timer -140
scoreboard players set @e[type=armor_stand,tag=DirCollision,score_Class_min=-34,score_Class=-34] Timer -140
scoreboard players tag @e[type=armor_stand,tag=DirCollision,score_Class_min=-34,score_Class=-34] remove DirCollision
scoreboard players tag @e[type=armor_stand,tag=DirCollision,score_Class_min=34,score_Class=34] remove DirCollision
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer=-140] ~ ~ ~ particle fireworksSpark ~ ~ ~ 1.5 1.5 1.5 0.1 15 force @a
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer=-140] ~ ~ ~ particle fireworksSpark ~ ~ ~ 1.5 1.5 1.5 0.1 15 force @a
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ particle hugeexplosion ~ ~ ~ 0 0 0 0 1 force @a
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ particle hugeexplosion ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players tag @e[type=armor_stand,tag=DirCollision,score_Class_min=34,score_Class=34,score_Timer=-140] remove DirMoving
scoreboard players tag @e[type=armor_stand,tag=DirCollision,score_Class_min=-34,score_Class=-34,score_Timer=-140] remove DirMoving
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 2 1
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 2 1
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer_min=0] ~ ~ ~ /playsound block.snow.step record @a[r=15] ~ ~ ~ 2 2 1
execute @e[type=armor_stand,score_Class_min=-34,score_Class=-34,score_Timer_min=0] ~ ~ ~ /playsound block.snow.step record @a[r=15] ~ ~ ~ 2 2 1
execute @e[tag=AffectByOrange] ~ ~ ~ /scoreboard players tag @e[type=armor_stand,score_Class_min=34,score_Class=34,r=3,score_Timer_min=0] add DirCollision
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer=-140] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,score_EffRegen=1020,r=5] EffRegen 1020
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer=-140] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,score_EffSpeed=1020,r=5] EffSpeed 1020
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,score_EffDamage=2,r=5] EffDamage 2
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,score_EffSlow=3040,r=5] EffSlow 3040
execute @e[type=armor_stand,score_Class_min=34,score_Class=34,score_Timer=-141,score_Timer_min=-141] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=5] TouchBy 34
execute @a[score_TouchBy_min=34,score_TouchBy=34,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle splash ~ ~1 ~ 0.5 1 0.5 0 20 force
execute @a[score_TouchBy_min=34,score_TouchBy=34,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle dripWater ~ ~1 ~ 0.5 1 0.5 0.005 20 force
scoreboard players set @a[score_Class_min=34,score_Class=34,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell1 500
scoreboard players set @a[score_Class_min=34,score_Class=34,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=34,score_Class=34,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1400
replaceitem entity @a[score_Mana=19,score_Class_min=34,score_Class=34,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=34,score_Class=34,score_UseCarrot_min=2,score_UseCarrot=2] Mana 20
replaceitem entity @a[score_Mana=29,score_Class_min=34,score_Class=34,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=34,score_Class=34,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_Mana=69,score_Class_min=34,score_Class=34,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=34,score_Class=34,score_UseXp_min=2,score_UseXp=2] Mana 70
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=34,score_Class=34,m=2] slot.hotbar.1 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Iceball  20✸  25s",Lore:[""]},HideFlags:63}
replaceitem entity @a[score_EffNoTp=0,score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=34,score_Class=34,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Winter Sleep  30✸  20s",Lore:[""]},HideFlags:63}
replaceitem entity @a[score_Mana_min=70,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=34,score_Class=34,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Chilblain  70✸  70s",Lore:[""]},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=34,score_TouchBy=34,team=Orange] ~ ~ ~ /say is now an iceberg because of @p[score_Class_min=34,score_Class=34,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=34,score_TouchBy=34,team=Blue] ~ ~ ~ /say is now an iceberg because of @p[score_Class_min=34,score_Class=34,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=34,score_TouchBy=34,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=34,score_Class=34,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=34,score_TouchBy=34,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=34,score_Class=34,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1