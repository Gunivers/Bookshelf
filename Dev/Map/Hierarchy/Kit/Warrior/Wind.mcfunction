execute @a[score_InGame_min=1,score_LifeState_min=400,team=Blue,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ scoreboard players set @e[tag=AffectByBlue,r=15,score_EffDamage=2] EffDamage 2
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Blue,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ scoreboard players set @e[tag=AffectByBlue,r=15] TouchBy 35
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Blue,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ particle blockcrack ~ ~ ~ 10 1 10 0.1 1000 force @a 12 0
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Blue,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ scoreboard players set @e[tag=AffectByBlue,r=15,score_EffFall=100] EffFall 100
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Blue,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ effect @e[tag=AffectByBlue,r=15] levitation 1 10 true
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Blue,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 2 1
scoreboard players tag @e[score_InGame_min=1,score_LifeState_min=400,team=Blue,score_Class_min=35,score_Class=35,score_IsWalking_min=1] remove 353G
effect @e[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell3_min=1399,score_Spell3=1399] levitation 1 127 true
scoreboard players tag @e[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell3_min=1375,score_Spell3=1400] add NoFall
effect @e[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell3_min=1396,score_Spell3=1396] levitation 0
effect @e[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell3_min=1380,score_Spell3=1380] levitation 1 128 true
effect @e[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell3_min=1375,score_Spell3=1375] levitation 0
scoreboard players tag @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell3_min=1380,score_Spell3=1380] add 353G
scoreboard players set @e[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell3_min=1380,score_Spell3=1380] EffInvulnerable 20
execute @a[score_InGame_min=1,score_LifeState_min=400,score_Class_min=35,score_Class=35,score_Spell3_min=1399,score_Spell3=1399] ~ ~ ~ playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Orange,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ scoreboard players set @e[tag=AffectByOrange,r=15,score_EffDamage=2] EffDamage 2
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Orange,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ scoreboard players set @e[tag=AffectByOrange,r=15] TouchBy 35
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Orange,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ particle blockcrack ~ ~ ~ 10 1 10 0.1 1000 force @a 12 0
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Orange,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ scoreboard players set @e[tag=AffectByOrange,r=15,score_EffFall=100] EffFall 100
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Orange,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ effect @e[tag=AffectByOrange,r=15] levitation 1 10 true
execute @a[score_InGame_min=1,score_LifeState_min=400,team=Orange,score_Class_min=35,score_Class=35,score_Spell3=1380,tag=353G,score_IsWalking_min=1] ~ ~ ~ playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 2 1
scoreboard players tag @e[score_InGame_min=1,score_LifeState_min=400,team=Orange,score_Class_min=35,score_Class=35,score_IsWalking_min=1] remove 353G
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=390,score_Spell2=390,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Blue,r=7,score_EffRegen=100] EffRegen 100
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=370,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=2,score_EffDamage=1002] EffDamage 1002
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=370,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=2] TouchBy 35
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=390,team=Blue] ~ ~ ~ /tp @e[tag=AffectByBlue,r=3] @s
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=390,team=Blue] ~ ~ ~ /tp @e[tag=AffectByBlue,r=3] ~ ~ ~ ~180 ~
effect @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=399,score_Spell2=399] slowness 1 10 true
effect @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=390,score_Spell2=390] slowness 0
effect @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=390,score_Spell2=390] speed 1 20 true
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=390,score_IsWalking_min=1] ~ ~ ~ /particle sweepAttack ~ ~1 ~ 0.1 0.5 0.1 0 3 force
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=370] ~ ~ ~ /particle cloud ~ ~1 ~ 0.1 0.5 0.1 0.2 50 force
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=399,score_Spell2=399] ~ ~ ~ /playsound entity.endermen.teleport record @a[r=10] ~ ~ ~ 1 0.5 1
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=390,score_Spell2=390] ~ ~ ~ /playsound entity.generic.explode record @a[r=10] ~ ~ ~ 1 2 1
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=390,score_IsWalking_min=1] ~ ~ ~ /particle cloud ~ ~1 ~ 0.1 0.5 0.1 0 3 force
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=370] ~ ~ ~ /playsound block.grass.break record @a[r=10] ~ ~ ~ 2 2 1
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=390,score_Spell2=390,score_IsWalking_min=1] ~ ~ ~ /particle cloud ~ ~1 ~ 5 0.5 5 0.1 100 force
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=390,score_Spell2=390,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=Orange,r=7,score_EffRegen=100] EffRegen 100
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=370,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=2,score_EffDamage=1002] EffDamage 1002
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=370,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=2] TouchBy 35
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=390,team=Orange] ~ ~ ~ /tp @e[tag=AffectByOrange,r=3] @s
execute @a[tag=IsPlaying,score_Class_min=35,score_Class=35,score_Spell2_min=370,score_Spell2=390,team=Orange] ~ ~ ~ /tp @e[tag=AffectByOrange,r=3] ~ ~ ~ ~180 ~
execute @e[type=armor_stand,score_Class_min=-35,score_Class=-35] ~ ~ ~ scoreboard players set @e[tag=AffectByBlue,r=3,score_EffScare=60] EffScare 60
execute @e[type=armor_stand,score_Class_min=-35,score_Class=-35] ~ ~ ~ scoreboard players set @e[tag=AffectByBlue,r=3,score_EffPoison=1060] EffPoison 1060
execute @e[type=armor_stand,score_Class_min=-35,score_Class=-35] ~ ~ ~ scoreboard players set @e[tag=AffectByBlue,r=3] TouchBy 35
execute @e[type=armor_stand,score_Class_min=-35,score_Class=-35] ~ ~ ~ effect @e[tag=AffectByBlue,r=3] blindness 5 1 true
execute @e[type=armor_stand,score_Class_min=35,score_Class=35] ~ ~ ~ particle blockcrack ~ ~ ~ 2 2 2 1 15 force @a 12 0
execute @e[type=armor_stand,score_Class_min=-35,score_Class=-35] ~ ~ ~ particle blockcrack ~ ~ ~ 2 2 2 1 15 force @a 12 0
execute @e[type=armor_stand,score_Class_min=-35,score_Class=-35] ~ ~ ~ /playsound entity.creeper.primed record @a[r=15] ~ ~ ~ 2 2 1
execute @e[type=armor_stand,score_Class_min=35,score_Class=35] ~ ~ ~ /playsound entity.creeper.primed record @a[r=15] ~ ~ ~ 2 2 1
execute @e[type=armor_stand,score_Class_min=-35,score_Class=-35] ~ ~ ~ particle sweepAttack ~ ~ ~ 2 2 2 1 3 force
execute @e[type=armor_stand,score_Class_min=35,score_Class=35] ~ ~ ~ particle sweepAttack ~ ~ ~ 2 2 2 1 3 force
execute @e[type=armor_stand,score_Class_min=35,score_Class=35] ~ ~ ~ scoreboard players set @e[tag=AffectByOrange,r=3,score_EffScare=60] EffScare 60
execute @e[type=armor_stand,score_Class_min=35,score_Class=35] ~ ~ ~ scoreboard players set @e[tag=AffectByOrange,r=3,score_EffPoison=60] EffPoison 60
execute @e[type=armor_stand,score_Class_min=35,score_Class=35] ~ ~ ~ scoreboard players set @e[tag=AffectByOrange,r=3] TouchBy 35
execute @e[type=armor_stand,score_Class_min=35,score_Class=35] ~ ~ ~ effect @e[tag=AffectByOrange,r=3] blindness 5 1 true
execute @a[score_TouchBy_min=35,score_TouchBy=35,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle snowshovel ~ ~1 ~ 1 1 1 0.1 10 force
execute @a[score_TouchBy_min=35,score_TouchBy=35,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle cloud ~ ~1 ~ 0.5 1 0.5 0 10 force
scoreboard players set @a[score_Class_min=35,score_Class=35,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell1 500
scoreboard players set @a[score_Class_min=35,score_Class=35,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=35,score_Class=35,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1400
replaceitem entity @a[score_Mana=19,score_Class_min=35,score_Class=35,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=35,score_Class=35,score_UseCarrot_min=2,score_UseCarrot=2] Mana 20
replaceitem entity @a[score_Mana=29,score_Class_min=35,score_Class=35,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=35,score_Class=35,score_UseFishing_min=2,score_UseFishing=2] Mana 30
replaceitem entity @a[score_Mana=69,score_Class_min=35,score_Class=35,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=35,score_Class=35,score_UseXp_min=2,score_UseXp=2] Mana 70
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=35,score_Class=35,m=2] slot.hotbar.1 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Desert Breath  20✸  25s",Lore:["۞ 20 Mana","... 25s Cooldown","","⚔ 2 Damage/Orb","❤ 1 Heal/Orb"]},HideFlags:63}
replaceitem entity @a[score_EffNoTp=0,score_Mana_min=30,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=35,score_Class=35,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Air Crushion  30✸  20s",Lore:["۞ 30 Mana","... 20s Cooldown","","» Teleport"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=70,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=35,score_Class=35,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Angel Jumping  70✸  70s",Lore:["۞ 70 Mana","... 70s Cooldown","","+ Spawn 2 horses","","+ No cooldown on primary","❤ 20% Protection ▢ Range 5 around horse"]},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=35,score_TouchBy=35,team=Orange] ~ ~ ~ /say got carried away by the breath of @p[score_Class_min=35,score_Class=35,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=35,score_TouchBy=35,team=Blue] ~ ~ ~ /say got carried away by the breath of @p[score_Class_min=35,score_Class=35,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=35,score_TouchBy=35,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=35,score_Class=35,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=35,score_TouchBy=35,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=35,score_Class=35,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1