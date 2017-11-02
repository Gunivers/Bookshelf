execute @a[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1460,score_Spell3=1460,team=Blue] ~ ~ ~ /execute @a[team=Orange,tag=IsPlaying,c=10] ~ ~ ~ /summon armor_stand ~ ~15 ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["023B","023G","Projectile","Blue","NotOrange"]}
execute @a[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1480,score_Spell3=1480,team=Blue] ~ ~ ~ /execute @a[team=Orange,tag=IsPlaying,c=10] ~ ~ ~ /summon armor_stand ~ ~15 ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["023B","023G","Projectile","Blue","NotOrange"]}
execute @a[type=armor_stand,tag=023B] ~ ~ ~ /scoreboard players set @e[team=Blue,score_InGame_min=1,r=6] EffInvulnerable 20
execute @e[tag=023B] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying] TouchBy 2
execute @e[type=armor_stand,tag=023B,score_Timer_min=20] ~ ~ ~ /effect @e[tag=IsPlaying,team=!Blue] resistance 1 0 true
execute @e[type=armor_stand,tag=023B,score_Timer_min=20] ~ ~ ~ /effect @e[tag=IsPlaying,team=Blue] resistance 1 100 true
execute @e[type=armor_stand,tag=023B,score_Timer_min=20] ~ ~ ~ /summon Creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0}
kill @e[type=Armor_Stand,tag=023B,score_Timer_min=20]
execute @a[score_InGame_min=1,score_Class_min=2,score_Class=2,score_Spell3_min=1497,m=2] ~ ~ ~ /playsound entity.firework.blast record @a ~ ~ ~ 2 0.5 1
execute @e[type=armor_stand,tag=023G] ~ ~ ~ /particle flame ~ ~0.2 ~ 0.5 0 0.5 0 3 force
execute @e[type=armor_stand,tag=023G] ~ ~ ~ /particle largesmoke ~ ~-0.2 ~ 0.3 0.3 0.3 0 5 force
execute @a[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1460,score_Spell3=1460,team=Orange] ~ ~ ~ /execute @a[team=Blue,tag=IsPlaying,c=10] ~ ~ ~ /summon armor_stand ~ ~15 ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["023R","023G","Projectile","Orange","NotBlue"]}
execute @a[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1480,score_Spell3=1480,team=Orange] ~ ~ ~ /execute @a[team=Blue,tag=IsPlaying,c=10] ~ ~ ~ /summon armor_stand ~ ~15 ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["023R","023G","Projectile","Orange","NotBlue"]}
execute @a[type=armor_stand,tag=023R] ~ ~ ~ /scoreboard players set @e[team=Orange,score_InGame_min=1,r=6] EffInvulnerable 20
execute @e[tag=023R] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying] TouchBy 2
execute @e[type=armor_stand,tag=023R,score_Timer_min=20] ~ ~ ~ /effect @e[tag=IsPlaying,team=!Orange] resistance 1 0 true
execute @e[type=armor_stand,tag=023R,score_Timer_min=20] ~ ~ ~ /effect @e[tag=IsPlaying,team=Orange] resistance 1 100 true
execute @e[type=armor_stand,tag=023R,score_Timer_min=20] ~ ~ ~ /summon Creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0}
kill @e[type=Armor_Stand,tag=023R,score_Timer_min=20]
execute @a[team=Orange,tag=IsPlaying] ~ ~ ~ /scoreboard players tag @e[type=armor_stand,score_Class_min=-2,score_Class=-2,r=3] add DirCollision
scoreboard players set @e[type=armor_stand,score_Class_min=-2,score_Class=-2] DirSpeed 100
scoreboard players set @e[type=armor_stand,score_Class_min=-2,score_Class=-2] DirCollision 1
execute @e[type=armor_stand,score_Class_min=-2,score_Class=-2,tag=DirCollision] ~ ~ ~ /effect @e[tag=IsPlaying,team=!Blue] resistance 1 0 true
execute @e[type=armor_stand,score_Class_min=-2,score_Class=-2,tag=DirCollision] ~ ~ ~ /effect @e[tag=IsPlaying,team=Blue] resistance 1 100 true
execute @e[type=armor_stand,score_Class_min=-2,score_Class=-2,tag=DirCollision] ~ ~ ~ /summon Creeper ~ ~ ~ {ExplosionRadius:2,Fuse:0}
kill @e[type=armor_stand,score_Class_min=-2,score_Class=-2,tag=DirCollision]
scoreboard players tag @e[type=armor_stand,score_Class_min=-2,score_Class=-2,score_Timer=-198] add DirCollision
execute @a[score_InGame_min=1,score_Class_min=2,score_Class=2,score_Spell2_min=198,score_Spell2=198,m=2] ~ ~ ~ /playsound entity.firework.blast record @a[r=10] ~ ~ ~ 2 0.5 1
scoreboard players set @e[type=armor_stand,score_Class_min=2,score_Class=2,score_Timer_min=38] Timer -197
scoreboard players set @e[type=armor_stand,score_Class_min=-2,score_Class=-2,score_Timer_min=38] Timer -197
execute @a[team=Blue,tag=IsPlaying] ~ ~ ~ /scoreboard players tag @e[type=armor_stand,score_Class_min=2,score_Class=2,r=3] add DirCollision
scoreboard players set @e[type=armor_stand,score_Class_min=2,score_Class=2] DirSpeed 100
scoreboard players set @e[type=armor_stand,score_Class_min=2,score_Class=2] DirCollision 1
execute @e[type=armor_stand,score_Class_min=2,score_Class=2,tag=DirCollision] ~ ~ ~ /effect @e[tag=IsPlaying,team=!Orange] resistance 1 0 true
execute @e[type=armor_stand,score_Class_min=2,score_Class=2,tag=DirCollision] ~ ~ ~ /effect @e[tag=IsPlaying,team=Orange] resistance 1 100 true
execute @e[type=armor_stand,score_Class_min=2,score_Class=2,tag=DirCollision] ~ ~ ~ /summon Creeper ~ ~ ~ {ExplosionRadius:2,Fuse:0}
kill @e[type=armor_stand,score_Class_min=2,score_Class=2,tag=DirCollision]
scoreboard players tag @e[type=armor_stand,score_Class_min=2,score_Class=2,score_Timer=-198] add DirCollision
execute @a[team=Blue,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell1_min=200,score_Timer05_min=1,score_Timer05=1,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["MB1B"]}
execute @a[team=Blue,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell1_min=200,score_Timer05_min=6,score_Timer05=6,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["MB1B"]}
execute @e[type=armor_stand,tag=MB1B] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=2,score_EffPoison=20] EffPoison 1020
execute @e[type=armor_stand,tag=MB1B] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=2] TouchBy 2
execute @a[score_InGame_min=1,score_Class_min=2,score_Class=2,score_Spell1_min=299,m=2] ~ ~ ~ /playsound item.flintandsteel.use record @p[r=1] ~ ~ ~ 2 0.5 1
scoreboard players set @a[score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell1_min=200,m=2] EffSpeed 1020
execute @a[team=Orange,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell1_min=200,score_Timer05_min=1,score_Timer05=1,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["MB1R"]}
execute @a[team=Orange,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell1_min=200,score_Timer05_min=6,score_Timer05=6,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["MB1R"]}
execute @e[type=armor_stand,tag=MB1R] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=2,score_EffPoison=20] EffPoison 1020
execute @e[type=armor_stand,tag=MB1R] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=2] TouchBy 2
replaceitem entity @a[score_InGame_min=1,score_Class_min=2,score_Class=2,score_EffNoMove_min=1,score_Spell1=0,m=2] slot.hotbar.1 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=2,score_TouchBy=2,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle largesmoke ~ ~1 ~ 0.5 1 0.5 0 10 force
execute @a[score_TouchBy_min=2,score_TouchBy=2,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle flame ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=2,score_Class=2,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 300
scoreboard players set @a[score_Class_min=2,score_Class=2,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell2 200
scoreboard players set @a[score_Class_min=2,score_Class=2,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 1500
replaceitem entity @a[score_Mana=79,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=2,score_Class=2,score_UseXp_min=2,score_UseXp=2] Mana 80
replaceitem entity @a[score_Mana=9,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=2,score_Class=2,score_UseCarrot_min=2,score_UseCarrot=2] Mana 10
replaceitem entity @a[score_EffNoMove=0,score_Mana=24,score_Class_min=2,score_Class=2,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=2,score_Class=2,score_UseFishing_min=2,score_UseFishing=2] Mana 25
replaceitem entity @a[score_Mana_min=25,score_InGame_min=1,score_EffSilence=0,score_EffNoMove=0,score_Spell1=0,score_Class_min=2,score_Class=2,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Fire Spirit  80✸  15s",Lore:["۞ 25 Mana","... 10s","","❤ 4 HaveShield 5s","❤ 20% Protection 5s","» 2 Speed 5s","⚔ 2 Poison 1s ▢ Trail Range 1"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=10,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=2,score_Class=2,m=2] slot.hotbar.2 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Fireball  10✸  10s",Lore:["۞ 10 Mana","... 5s","","⚔ 1 - 11 Damage ▢ Lancable Impact Range 5","☀ Knockback ▢ Lancable Impact Range 5"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=80,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=2,score_Class=2,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Meteor  25✸  75s",Lore:["۞ 80 Mana","... 75s","","⚔ 0 - 14 Damage ▢ All Es"]},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=2,score_TouchBy=2,team=Orange] ~ ~ ~ /say burned by touching @p[score_Class_min=2,score_Class=2,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=2,score_TouchBy=2,team=Blue] ~ ~ ~ /say burned by touching @p[score_Class_min=2,score_Class=2,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=2,score_TouchBy=2,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=2,score_Class=2,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=2,score_TouchBy=2,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=2,score_Class=2,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1