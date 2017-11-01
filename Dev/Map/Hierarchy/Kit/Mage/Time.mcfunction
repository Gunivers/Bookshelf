execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=1,score_Timer=1,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B"],NoGravity:1}
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=11,score_Timer=11,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B"],NoGravity:1}
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=21,score_Timer=21,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B"],NoGravity:1}
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=31,score_Timer=31,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B"],NoGravity:1}
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=2,score_Timer=2,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3B,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Blue]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=12,score_Timer=12,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3B,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Blue]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=22,score_Timer=22,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3B,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Blue]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=32,score_Timer=32,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3B,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Blue]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /tp @p[r=1,score_Class_min=1,score_Class=1,team=Blue,score_Spell3_min=890] @e[type=armor_stand,tag=MT3B,r=50,c=1]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /kill @e[type=armor_stand,tag=MT3B,r=1,c=1]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=5] TouchBy 1
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=5] EffDamage 1
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=5] EffSilence 20
scoreboard players set @e[type=armor_stand,tag=MT3R,score_Timer_min=1] Timer -100
scoreboard players set @e[type=armor_stand,tag=MT3B,score_Timer_min=1] Timer -100
scoreboard players set @a[score_Class_min=1,score_Class=1,score_Spell3_min=897] Spell1 0
scoreboard players set @a[score_Class_min=1,score_Class=1,score_Spell3_min=897] Spell2 0
scoreboard players set @a[score_Class_min=1,score_Class=1,score_Spell3_min=897] EffHeal 2
execute @a[score_Class_min=1,score_Class=1,score_Spell3_min=899,score_Spell3=899] ~ ~ ~ /playsound entity.zombie_horse.death record @a[r=30] ~ ~ ~ 2 2 1
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=1,score_Timer=1,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R"],NoGravity:1}
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=11,score_Timer=11,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R"],NoGravity:1}
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=21,score_Timer=21,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R"],NoGravity:1}
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=31,score_Timer=31,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R"],NoGravity:1}
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=2,score_Timer=2,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3R,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Orange]
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=12,score_Timer=12,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3R,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Orange]
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=22,score_Timer=22,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3R,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Orange]
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=32,score_Timer=32,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3R,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Orange]
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /tp @p[r=1,score_Class_min=1,score_Class=1,team=Orange,score_Spell3_min=890] @e[type=armor_stand,tag=MT3R,r=50,c=1]
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /kill @e[type=armor_stand,tag=MT3R,r=1,c=1]
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=5] TouchBy 1
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=5] EffDamage 1
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=5] EffSilence 20
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=5,score_LifeState_min=500,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /tp @e[team=!Blue,r=5,score_LifeState_min=500] ~ ~ ~ ~180 ~
execute @a[score_Class_min=1,score_Class=1,score_Spell2=298,score_Spell2_min=298,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /spreadplayers ~ ~ 0 10 false @e[type=!armor_stand,team=Orange,r=5,tag=IsPlaying]
execute @a[score_Class_min=1,score_Class=1,score_Spell2=298,score_Spell2_min=299,score_InGame_min=1,m=2] ~ ~ ~ /playsound mob.endermen.portal record @a[r=10] ~ ~ ~ 2 1 1
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_Spell2=299] ~ ~ ~ /playsound entity.guardian.death record @a[r=30] ~ ~ ~ 2 2 1
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=5,score_LifeState_min=500,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /tp @e[team=!Orange,r=5,score_LifeState_min=500] ~ ~ ~ ~180 ~
execute @a[score_Class_min=1,score_Class=1,score_Spell2=298,score_Spell2_min=298,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /spreadplayers ~ ~ 0 10 false @e[type=!armor_stand,team=Blue,r=5,tag=IsPlaying]
execute @e[type=armor_stand,score_Class_min=-1,score_Class=-1] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=4] EffDamage 3
execute @e[type=armor_stand,score_Class_min=-1,score_Class=-1] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=4] TouchBy 1
scoreboard players set @e[type=armor_stand,score_DirMoving_min=1,score_Class_min=1,score_Class=1] DirSpeed 100
scoreboard players set @e[type=armor_stand,score_DirMoving_min=1,score_Class_min=-1,score_Class=-1] DirSpeed 100
execute @a[score_Class_min=1,score_Class=1,score_UseCarrot_min=2,score_UseCarrot=2] ~ ~ ~ /playsound entity.elder_guardian.death record @a[r=30] ~ ~ ~ 2 1 1
execute @e[type=armor_stand,score_Class_min=1,score_Class=1] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=4] EffDamage 3
execute @e[type=armor_stand,score_Class_min=1,score_Class=1] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=4] TouchBy 1
replaceitem entity @a[score_InGame_min=1,score_Class_min=1,score_Class=1,score_EffNoTp_min=1,score_Spell2=0,m=2] slot.hotbar.2 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=1,score_TouchBy=1,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle depthsuspend ~ ~1 ~ 0.5 1 0.5 0 20 force
execute @a[score_TouchBy_min=1,score_TouchBy=1,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle witchMagic ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=1,score_Class=1,score_UseCarrot_min=1,score_UseCarrot_min=1,m=2] Spell1 200
scoreboard players set @a[score_Class_min=1,score_Class=1,score_UseTp_min=2,score_UseTp=2,score_InGame_min=1,m=2] Spell2 300
scoreboard players set @a[score_Class_min=1,score_Class=1,score_UseXp_min=1,score_InGame_min=1,m=2] Spell3 900
replaceitem entity @a[score_Mana=69,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=1,score_Class=1,score_UseXp_min=2,score_UseXp=2] Mana 70
replaceitem entity @a[score_EffNoTp=0,score_Mana=39,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=1,score_Class=1,score_UseTp_min=2,score_UseTp=2] Mana 40
replaceitem entity @a[score_Mana=49,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=1,score_Class=1,score_UseCarrot_min=2,score_UseCarrot=2] Mana 50
replaceitem entity @a[score_Mana_min=50,score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=1,score_Class=1,m=2] slot.hotbar.1 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Temporal Paradox  70✸  10s",Lore:["۞ 50 Mana","... 10s","","⚔ 3 Damage ▢ Lancable Range 3"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=40,score_InGame_min=1,score_EffSilence=0,score_EffNoTp=0,score_Spell2=0,score_Class_min=1,score_Class=1,m=2] slot.hotbar.2 minecraft:ender_pearl 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Vortex  40✸  15s",Lore:["۞ 40 Mana","... 15s","","☀ Random teleport ▢ Range 5","☀ Stun 2s ▢ Range 5","","» Teleport ▢ Lancable"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=70,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=1,score_Class=1,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Checkpoint  50✸  45s",Lore:["۞ 70 Mana","... 45s","","❤ 24 Heal","⚔ 3 Damage ▢ Range 3","☀ EffSilence 1s ▢ Range 3","» Return 5s in past","+ Cooldown reset"]},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=1,score_TouchBy=1,team=Orange] ~ ~ ~ /say 's existence has been erased by @p[score_Class_min=1,score_Class=1,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=1,score_TouchBy=1,team=Blue] ~ ~ ~ /say 's existence has been erased by @p[score_Class_min=1,score_Class=1,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=1,score_TouchBy=1,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=1,score_Class=1,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=1,score_TouchBy=1,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=1,score_Class=1,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1