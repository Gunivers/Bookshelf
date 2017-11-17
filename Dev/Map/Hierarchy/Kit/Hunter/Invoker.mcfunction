execute @a[score_UseFishing_min=2,score_UseFishing=2,score_Class_min=25,score_Class=25,score_InGame_min=1] ~ ~ ~ /particle cloud ~ ~1 ~ 1 0.5 1 0 20 force
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2] ~ ~ ~ /particle cloud ~ ~0.2 ~ 5 0 5 0 70
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2] ~ ~ ~ /particle sweepAttack ~ ~0.2 ~ 5 0 5 0 15
execute @e[type=armor_stand,score_Class_min=25,score_Class=25] ~ ~ ~ /particle cloud ~ ~ ~ 0.4 0.4 0.4 0 5 force
execute @e[type=armor_stand,score_Class_min=-25,score_Class=-25] ~ ~ ~ /particle largeexplode ~ ~ ~ 0 0 0 0 1 force
execute @a[score_InGame_min=1,score_Class_min=25,score_Class=25,score_Spell3=-1,m=2] ~ ~ ~ /particle cloud ~ ~ ~ 0.5 0.3 0.5 0 3 force


execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26,score_EffDamage=1] EffDamage 1
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26,score_EffSilence=20] EffSilence 40
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26,score_EffSlow=3040] EffSlow 3040
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /effect @e[team=!Blue,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26] blindness 4 1 true
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /execute @e[team=!Blue,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26] ~ ~ ~ /particle reddust ~ ~1 ~ 0.3 0.5 0.3 1 20
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2] ~ ~ ~ /execute @a[score_InGame_min=1] ~ ~ ~ /playsound minecraft:entity.enderdragon.growl record @a[r=30] ~ ~ ~ 2 1 1
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26,score_EffDamage=1] EffDamage 1
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26,score_EffSilence=40] EffSilence 40
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26,score_EffSlow=3040] EffSlow 3040
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /effect @e[team=!Orange,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26] blindness 4 1 true
execute @a[score_Class_min=26,score_Class=26,score_Spell3=1799,score_Spell3_min=1799,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /execute @e[team=!Orange,score_InGame_min=1,m=2,score_TouchBy_min=26,score_TouchBy=26] ~ ~ ~ /particle reddust ~ ~1 ~ 0.3 0.5 0.3 1 20
execute @a[score_Class_min=26,score_Class=26,score_Spell2=-998,score_Spell2_min=-999,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=5,tag=IsPlaying] TouchBy 26
execute @a[score_Class_min=26,score_Class=26,score_Spell2=-998,score_Spell2_min=-999,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=5,tag=IsPlaying,score_EffDamage=1001] EffDamage 1001
execute @a[score_Class=26,score_Class_min=26,score_Spell2_min=-999,score_Spell2=-999,team=Blue] ~ ~ ~ /summon Skeleton ~ ~ ~ {CustomName:Archer,CustomNameVisible:false,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:884479}}},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:skull",Damage:0,Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:air"}],LeftHanded:false,Tags:["SpawnAnime","NotOrange","Blue","262R","Life10"]}
scoreboard players add @a[score_Class_min=26,score_Class=26,score_InGame_min=1,m=2,score_Spell2=-1] Spell2 1
effect @a[score_Class_min=26,score_Class=26,score_Spell2=-998,score_Spell2_min=-999,score_InGame_min=1,m=2] levitation 1 25 true
execute @a[score_Class_min=26,score_Class=26,score_Spell2=-998,score_Spell2_min=-999,score_InGame_min=1,m=2] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
scoreboard players set @a[score_Class_min=26,score_Class=26,score_Spell2=-1,score_InGame_min=1,m=2,score_HaveElytra=3] EffPlane 3
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=-981,score_Spell3=-1,score_InGame_min=1,m=2] ~ ~ ~ detect ~ ~-0.3 ~ air 0 /scoreboard players set @p[r=1,score_Class_min=26,score_Class=26,score_Spell2_min=-981,score_Spell2=-1,score_InGame_min=1,m=2] Spell2 -980
scoreboard players set @a[score_Class_min=26,score_Class=26,score_Spell2_min=-977,score_Spell2=-1,score_InGame_min=1,m=2,score_IsWalking_min=10] Spell2 400
replaceitem entity @a[score_Class_min=26,score_Class=26,score_Spell2=-1,score_InGame_min=1,m=2] slot.hotbar.2 minecraft:gunpowder 1 0 {display:{Name:"PRESS SPACE and fly !"},HideFlags:63}
scoreboard players set @a[score_Class_min=26,score_Class=26,score_Spell2=-1,score_InGame_min=1,m=2,score_EffInvulnerable=3] EffInvulnerable 3
execute @a[score_Class_min=26,score_Class=26,score_Spell2=-998,score_Spell2_min=-999,score_InGame_min=1,m=2] ~ ~ ~ /particle reddust ~ ~0.2 ~ 4 0 4 1 30 force
execute @a[score_Class_min=26,score_Class=26,score_Spell2=-998,score_Spell2_min=-999,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=5,tag=IsPlaying] TouchBy 26
execute @a[score_Class_min=26,score_Class=26,score_Spell2=-998,score_Spell2_min=-999,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=5,tag=IsPlaying,score_EffDamage=1001] EffDamage 1001
execute @a[score_Class=26,score_Class_min=26,score_Spell2_min=-999,score_Spell2=-999,team=Orange] ~ ~ ~ /summon Skeleton ~ ~-2 ~ {CustomName:Archer,CustomNameVisible:false,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:skull",Damage:0,Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:air"}],LeftHanded:false,Tags:["SpawnAnime","NotBlue","Orange","262R","Life10"]}
execute @e[type=armor_stand,score_Class_min=-26,score_Class=-26] ~ ~ ~ /scoreboard players set @e[r=3,team=!Blue,tag=IsPlaying] TouchBy 26
execute @e[type=armor_stand,score_Class_min=-26,score_Class=-26] ~ ~ ~ /scoreboard players set @e[r=3,team=Blue,tag=IsPlaying,score_EffRegen=1020] EffRegen 1020
execute @e[type=armor_stand,score_Class_min=-26,score_Class=-26] ~ ~ ~ /scoreboard players set @e[r=3,team=!Blue,tag=IsPlaying,score_EffDamage=1] EffDamage 1
execute @e[type=armor_stand,score_Class_min=26,score_Class=26] ~ ~ ~ /particle reddust ~ ~ ~ 0.5 0.5 0.5 0.05 5 force
execute @e[type=armor_stand,score_Class_min=-26,score_Class=-26] ~ ~ ~ /particle reddust ~ ~ ~ 0.5 0.5 0.5 0.05 5 force
scoreboard players set @e[type=armor_stand,score_Class_min=-26,score_Class=-26] DirCollision 1
scoreboard players set @e[type=armor_stand,score_Class_min=26,score_Class=26] DirCollision 1
execute @a[score_InGame_min=1,score_Class_min=26,score_Class=26,score_Spell1_min=139,score_Spell1=139,m=2] ~ ~ ~ /playsound entity.firework.blast_far record @a[r=30] ~ ~ ~ 2 1 1
execute @e[type=armor_stand,score_Class_min=26,score_Class=26] ~ ~ ~ /scoreboard players set @e[r=3,team=!Orange,tag=IsPlaying] TouchBy 26
execute @e[type=armor_stand,score_Class_min=26,score_Class=26] ~ ~ ~ /scoreboard players set @e[r=3,team=Orange,tag=IsPlaying,score_EffRegen=1020] EffRegen 1020
execute @e[type=armor_stand,score_Class_min=26,score_Class=26] ~ ~ ~ /scoreboard players set @e[r=3,team=!Orange,tag=IsPlaying,score_EffDamage=1] EffDamage 1
replaceitem entity @a[score_InGame_min=1,score_Class_min=26,score_Class=26,score_EffNoMove_min=1,score_Spell2=0,m=2] slot.hotbar.2 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=26,score_TouchBy=26,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle enchantmenttable ~ ~1 ~ 0.5 1 0.5 0 20 force
execute @a[score_TouchBy_min=26,score_TouchBy=26,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle reddust ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=26,score_Class=26,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell1 140
scoreboard players set @a[score_Class_min=26,score_Class=26,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell2 -1000
scoreboard players set @a[score_Class_min=26,score_Class=26,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1800
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=26,score_Class=26,m=2] slot.hotbar.1 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Dark Energy  0✸  7s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Spell2_min=0,score_EffNoMove=0,score_Class_min=26,score_Class=26,m=2] slot.hotbar.2 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Migration  0✸  20s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Spell3_min=0,score_Class_min=26,score_Class=26,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Shadow Fear  0✸  90s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=26,score_TouchBy=26,team=Orange] ~ ~ ~ /say met death under request of @p[score_Class_min=26,score_Class=26,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=26,score_TouchBy=26,team=Blue] ~ ~ ~ /say met death under request of @p[score_Class_min=26,score_Class=26,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=26,score_TouchBy=26,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=26,score_Class=26,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=26,score_TouchBy=26,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=26,score_Class=26,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1