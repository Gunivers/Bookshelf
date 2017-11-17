execute @a[score_UseFishing_min=2,score_UseFishing=2,score_Class_min=25,score_Class=25,score_InGame_min=1] ~ ~ ~ /particle cloud ~ ~1 ~ 1 0.5 1 0 20 force
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2] ~ ~ ~ /particle cloud ~ ~0.2 ~ 5 0 5 0 70
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2] ~ ~ ~ /particle sweepAttack ~ ~0.2 ~ 5 0 5 0 15
execute @e[type=armor_stand,score_Class_min=25,score_Class=25] ~ ~ ~ /particle cloud ~ ~ ~ 0.4 0.4 0.4 0 5 force
execute @e[type=armor_stand,score_Class_min=-25,score_Class=-25] ~ ~ ~ /particle largeexplode ~ ~ ~ 0 0 0 0 1 force
execute @a[score_InGame_min=1,score_Class_min=25,score_Class=25,score_Spell3=-1,m=2] ~ ~ ~ /particle cloud ~ ~ ~ 0.5 0.3 0.5 0 3 force

execute @e[type=armor_stand,score_Class_min=-25,score_Class=-25,tag=DirCollision] ~ ~ ~ /particle hugeexplosion ~ ~1.5 ~ 0 0 0 0 1 force
execute @e[type=armor_stand,score_Class_min=-25,score_Class=-25,score_Timer_min=3] ~ ~ ~ /particle largeexplode ~ ~1.5 ~ 0 0 0 0 1 force
execute @e[type=armor_stand,score_Class_min=-25,score_Class=-25] ~ ~ ~ /scoreboard players set @a[score_InGame_min=1,m=2,r=5,team=Orange] TouchBy 25
execute @e[type=armor_stand,score_Class_min=-25,score_Class=-25] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,r=5,team=!Blue] EffDamage 2
execute @e[type=armor_stand,score_Class_min=-25,score_Class=-25,tag=DirCollision] ~ ~ ~ /playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 1 1
kill @e[type=armor_stand,score_Class_min=-25,score_Class=-25,tag=DirCollision]
effect @a[score_Class_min=25,score_Class=25,score_Spell3=-1798,score_Spell3_min=-1799,score_InGame_min=1,m=2] levitation 1 15 true
effect @a[score_Class_min=25,score_Class=25,score_Spell3=-1621,score_Spell3_min=-1777,score_InGame_min=1,m=2] levitation 1 255 true
effect @a[score_Spell3=-1,tag=IsPlaying,score_Class_min=25,score_Class=25] minecraft:glowing 1 1 true
scoreboard players add @a[score_Class_min=25,score_Class=25,score_Spell3=-1601,score_InGame_min=1,m=2] Spell3 1
scoreboard players set @a[score_Class_min=25,score_Class=25,score_Spell3=-1600,score_Spell3_min=-1600,score_InGame_min=1,m=2] Spell3 1800
effect @a[score_Class_min=25,score_Class=25,score_Spell3=-1601,score_InGame_min=1,m=2] resistance 1 100 true
replaceitem entity @a[score_InGame_min=1,score_Spell3=0,score_Spell3=-1601,score_Spell3_min=-1780,score_Class_min=25,score_Class=25,m=2] slot.hotbar.3 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"SHOOT !"},HideFlags:63}
scoreboard players set @a[score_Class_min=25,score_Class=25,score_Spell3_min=-1660,score_Spell3=-1601,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell3 -1600
scoreboard players set @a[score_Class_min=25,score_Class=25,score_Spell3_min=-1720,score_Spell3=-1661,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell3 -1662
scoreboard players set @a[score_Class_min=25,score_Class=25,score_Spell3=-1721,score_Spell3_min=-1780,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell3 -1722
replaceitem entity @a[score_InGame_min=1,score_Spell3=0,score_Spell3=-1781,score_Class_min=25,score_Class=25,m=2] slot.hotbar.3 minecraft:gunpowder 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Wait ..."},HideFlags:63}
scoreboard players set @e[type=armor_stand,score_Class_min=25,score_Class=25] DirCollision 1
scoreboard players set @e[type=armor_stand,score_Class_min=-25,score_Class=-25] DirCollision 1
execute @a[score_InGame_min=1,score_Class_min=25,score_Class=25,score_UseCarrot_min=2,score_UseCarrot=2,m=2] ~ ~ ~ /playsound entity.firework.blast record @a[r=10] ~ ~ ~ 2 0.5 1
execute @a[score_InGame_min=1,score_Class_min=25,score_Class=25,score_UseXp_min=2,score_UseXp=2,m=2] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=10] ~ ~ ~ 2 1 1
scoreboard players set @a[score_InGame_min=1,score_Class_min=25,score_Class=25,score_Spell3=-1] EffInvulnerable 40
execute @a[score_Class_min=25,score_Class=25,score_Spell3=-1,score_InGame_min=1,m=2] ~ ~ ~ /kill @e[type=Arrow,r=3]
scoreboard players set @a[score_Class_min=25,score_Class=25,score_Spell3=-1,score_InGame_min=1,m=2,score_EffSilence=2] EffSilence 2
scoreboard players set @a[score_Class_min=25,score_Class=25,score_Spell3=-1,score_InGame_min=1,m=2,score_EffEffSilencePrim=2] EffSilencePrim 2
scoreboard players set @a[score_Class_min=25,score_Class=25,score_Spell3=-1,score_InGame_min=1,m=2,score_EffInvulnerable=40] EffInvulnerable 80
effect @a[score_Class_min=25,score_Class=25,score_Spell3_min=1799,score_InGame_min=1,m=2] jump_boost 3 255 true
execute @e[type=armor_stand,score_Class_min=25,score_Class=25,tag=DirCollision] ~ ~ ~ /particle hugeexplosion ~ ~1.5 ~ 0 0 0 0 1 force
execute @e[type=armor_stand,score_Class_min=25,score_Class=25,score_Timer_min=3] ~ ~ ~ /particle largeexplode ~ ~1.5 ~ 0 0 0 0 1 force
execute @e[type=armor_stand,score_Class_min=25,score_Class=25] ~ ~ ~ /scoreboard players set @a[score_InGame_min=1,m=2,r=5,team=Blue] TouchBy 25
execute @e[type=armor_stand,score_Class_min=25,score_Class=25] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,r=5,team=!Orange] EffDamage 2
execute @e[type=armor_stand,score_Class_min=25,score_Class=25,tag=DirCollision] ~ ~ ~ /playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 1 1
kill @e[type=armor_stand,score_Class_min=25,score_Class=25,tag=DirCollision]
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /effect @e[team=!Blue,tag=IsPlaying,r=7] levitation 1 10 true
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @a[team=!Blue,tag=IsPlaying,r=7] EffSilence 60
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @a[team=!Blue,tag=IsPlaying,r=7] TouchBy 25
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @a[team=!Blue,tag=IsPlaying,r=7,score_EffFall=100] EffFall 100
execute @e[score_Class_min=25,score_Class=25,score_InGame_min=1,m=2,score_Spell2_min=199,score_Spell2=199] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 0.5 1
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /effect @e[team=!Orange,tag=IsPlaying,r=7] levitation 1 10 true
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @a[team=!Orange,tag=IsPlaying,r=7] EffSilence 60
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @a[team=!Orange,tag=IsPlaying,r=7] TouchBy 25
execute @a[score_Class_min=25,score_Class=25,score_Spell2=199,score_Spell2_min=199,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @a[team=!Orange,tag=IsPlaying,r=7,score_EffFall=100] EffFall 100
scoreboard players set @a[score_UseFishing_min=2,score_UseFishing=2,score_Class_min=25,score_Class=25,score_InGame_min=1] UpgradedWeapon 100
execute @a[score_UseFishing_min=1,score_Class_min=25,score_Class=25,score_InGame_min=1] ~ ~ ~ /playsound entity.shulker.close record @a[r=30] ~ ~ ~ 2 2 1
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=25,score_Class=25,score_UpgradedWeapon_min=1,m=2,score_HaveBow=0] slot.hotbar.0 bow 1 0 {Unbreakable:1,ench:[{id:51,lvl:1},{id:49,lvl:2},{id:50,lvl:0}],display:{Name:"Basic Attack (Upgraded)"}}
execute @a[score_TouchBy_min=25,score_TouchBy=25,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle snowshovel ~ ~1 ~ 1 1 1 0.1 10 force
execute @a[score_TouchBy_min=25,score_TouchBy=25,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle cloud ~ ~1 ~ 0.5 1 0.5 0 10 force
scoreboard players set @a[score_Class_min=25,score_Class=25,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 300
scoreboard players set @a[score_Class_min=25,score_Class=25,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,m=2] Spell2 200
scoreboard players set @a[score_Class_min=25,score_Class=25,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 -1800
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=25,score_Class=25,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Breeze  0✸  15s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=25,score_Class=25,m=2] slot.hotbar.2 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Mistrale  0✸  10s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Spell3_min=0,score_Class_min=25,score_Class=25,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Hawkeyes  0✸  90s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=25,score_TouchBy=25,team=Orange] ~ ~ ~ /say got carried away by the breath of @p[score_Class_min=25,score_Class=25,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=25,score_TouchBy=25,team=Blue] ~ ~ ~ /say got carried away by the breath of @p[score_Class_min=25,score_Class=25,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=25,score_TouchBy=25,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=25,score_Class=25,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=25,score_TouchBy=25,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=25,score_Class=25,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1