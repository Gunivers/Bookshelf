execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_UseSnowball_min=2,score_UseSnowball=2,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[type=Snowball,r=5,c=1] Class -4
execute @e[type=Snowball,score_Class_min=-4,score_Class=-4] ~ ~ ~ /scoreboard players set @e[r=5,team=!Blue,tag=IsPlaying,score_EffDamage=1002] EffDamage 1002
execute @e[type=Snowball,score_Class_min=-4,score_Class=-4] ~ ~ ~ /scoreboard players set @e[r=5,team=!Blue,tag=IsPlaying,score_EffSlow=3020] EffSlow 3020
execute @e[type=Snowball,score_Class_min=-4,score_Class=-4] ~ ~ ~ /playsound entity.creeper.death record @a[r=15] ~ ~ ~ 5 2 1
execute @e[type=Snowball,score_Class_min=-4,score_Class=-4] ~ ~ ~ /tp @e[type=armor_stand,score_Class_min=-4,score_Class=-4,r=10,c=1] @e[type=Snowball,score_Class_min=-4,score_Class=-4,r=3,c=1]
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_UseSnowball_min=3,score_UseSnowball=3,team=Blue] ~ ~ ~ /scoreboard players set @e[type=armor_stand,r=5,c=1] Class -4
execute @e[type=armor_stand,score_Class_min=-4,score_Class=-4] ~ ~ ~ /scoreboard players set @e[r=5,team=Orange,score_EffPoison=2] EffPoison 2
execute @e[type=armor_stand,score_Class_min=-4,score_Class=-4] ~ ~ ~ /scoreboard players set @e[r=5,team=Orange,score_EffSlow=2002] EffSlow 2002
execute @e[type=armor_stand,score_Class_min=-4,score_Class=-4] ~ ~ ~ /scoreboard players set @a[score_InGame_min=1,m=2,r=5,team=Orange] TouchBy 4
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_UseSnowball_min=2,score_UseSnowball=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoGravity:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_UseSnowball_min=3,score_UseSnowball=3] ~ ~ ~ /scoreboard players set @e[type=armor_stand,r=5,c=1] Timer -100
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_UseSnowball_min=2,score_UseSnowball=2,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[type=Snowball,r=5,c=1] Class 4
execute @e[type=Snowball,score_Class_min=4,score_Class=4] ~ ~ ~ /scoreboard players set @e[r=5,team=!Orange,tag=IsPlaying,score_EffDamage=1002] EffDamage 1002
execute @e[type=Snowball,score_Class_min=4,score_Class=4] ~ ~ ~ /scoreboard players set @e[r=5,team=!Orange,tag=IsPlaying,score_EffSlow=3020] EffSlow 3020
execute @e[type=Snowball,score_Class_min=4,score_Class=4] ~ ~ ~ /playsound entity.creeper.death record @a[r=15] ~ ~ ~ 5 2 1
execute @e[type=Snowball,score_Class_min=4,score_Class=4] ~ ~ ~ /tp @e[type=armor_stand,score_Class_min=4,score_Class=4,r=10,c=1] @e[type=Snowball,score_Class_min=4,score_Class=4,r=3,c=1]
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_UseSnowball_min=3,score_UseSnowball=3,team=Orange] ~ ~ ~ /scoreboard players set @e[type=armor_stand,r=5,c=1] Class 4
execute @e[type=armor_stand,score_Class_min=4,score_Class=4] ~ ~ ~ /scoreboard players set @e[r=5,team=Blue,score_EffPoison=2] EffPoison 2
execute @e[type=armor_stand,score_Class_min=4,score_Class=4] ~ ~ ~ /scoreboard players set @e[r=5,team=Blue,score_EffSlow=2002] EffSlow 2002
execute @e[type=armor_stand,score_Class_min=4,score_Class=4] ~ ~ ~ /scoreboard players set @a[score_InGame_min=1,m=2,r=5,team=Blue] TouchBy 4
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Blue] EffDamage 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=40,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=7,tag=IsPlaying] EffSlow 1002
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Blue] TouchBy 4
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99] ~ ~ ~ /playsound block.snow.step record @a[r=10] ~ ~ ~ 2 1 1
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Orange] EffDamage 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=40,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,tag=IsPlaying] EffSlow 1002
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Orange] TouchBy 4
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=599,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Blue,r=10] EffDamage 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=599,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Blue,r=10] TouchBy 4
scoreboard players set @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=-2,score_Spell1=-1] Spell1 600
scoreboard players add @a[score_Class_min=4,score_Class=4,score_Spell1=-1] Spell1 1
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1=-199] ~ ~ ~ /playsound entity.generic.drink record @a[r=7] ~ ~ ~ 2 1 1
effect @e[score_Class_min=4,score_Class=4,score_InGame_min=1,m=2,score_Spell1=-25] minecraft:slowness 1 1 true
scoreboard players set @a[score_Class_min=4,score_Class=4,score_InGame_min=1,m=2,score_Spell1=-1] EffInvisibility 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=599,score_Spell1=599] ~ ~ ~ /playsound entity.player.splash record @a[r=15] ~ ~ ~ 2 1 1
scoreboard players set @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1=-1,m=2,score_EffInvulnerable=10] EffInvulnerable 10
scoreboard players set @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1=-1,m=2,score_EffFly=10] EffFly 5
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=599,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Orange,r=10] EffDamage 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=599,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Orange,r=10] TouchBy 4
execute @a[score_TouchBy_min=4,score_TouchBy=4,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle splash ~ ~1 ~ 0.5 1 0.5 0 40 force
execute @a[score_TouchBy_min=4,score_TouchBy=4,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle dripWater ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,score_Spell1=-1,m=2] Spell1 600
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,score_Spell1_min=0,score_Spell1=0,m=2] Spell1 -200
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell2 100
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UseSnowball_min=2,score_UseSnowball=2,score_InGame_min=1,m=2] Spell3 900
replaceitem entity @a[score_Mana=39,score_Class_min=4,score_Class=4,score_InGame_min=1,score_Spell3=0,score_Spell3_min=0,m=2,score_EffSilence=0] slot.hotbar.3 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=4,score_Class=4,score_UseSnowball_min=2,score_UseSnowball=2] Mana 40
replaceitem entity @a[score_Mana=19,score_Class_min=4,score_Class=4,score_InGame_min=1,score_Spell2=0,score_Spell2_min=0,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=4,score_Class=4,score_UseFishing_min=2,score_UseFishing=2] Mana 20
replaceitem entity @a[score_Mana=59,score_Class_min=4,score_Class=4,score_InGame_min=1,score_Spell1=0,score_Spell1_min=0,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Not enough mana !"},ench:[{id:19,lvl:0}]}
scoreboard players remove @a[score_Class_min=4,score_Class=4,score_Spell1_min=-198,score_Spell1=-198] Mana 60
replaceitem entity @a[score_Mana_min=60,score_InGame_min=1,score_EffSilence=0,score_Spell1_min=0,score_Spell1=0,score_Class_min=4,score_Class=4,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Water Transformation  40✸  30s",Lore:["۞ 60 Mana","... 30s","","❤ 2 Regeneration 3s","","» Fly 15s","❤ 20% Protection 15s","","⚔ 6 Damage ▢ Range 7"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell1=-1,score_Class_min=4,score_Class=4,m=2] slot.hotbar.1 minecraft:splash_potion 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Abort Water Transformation"},HideFlags:63}
replaceitem entity @a[score_Mana_min=20,score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=4,score_Class=4,m=2] slot.hotbar.2 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Refresh  20✸  5s",Lore:["۞ 20 Mana","... 5s","","⚔ 6 Damage ▢ Range 5","","☀ 2 Slow 1s ▢ Range 5"]},HideFlags:63}
replaceitem entity @a[score_Mana_min=40,score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=4,score_Class=4,m=2] slot.hotbar.3 minecraft:snowball 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Winter Blast  60✸  45s",Lore:["۞ 40 Mana","... 45s","","⚔ 6 Damage ▢ Lancable Range 3","☀ Stun 3s ▢ Lancable Range 3","","⚔ 2 Poison 1s ▢ Lancable Impact Range 3","☀ 2 Slow 1s ▢ Lancable Impact Range 3"]},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=4,score_TouchBy=4,team=Orange] ~ ~ ~ /say is now an iceberg because of @p[score_Class_min=4,score_Class=4,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=4,score_TouchBy=4,team=Blue] ~ ~ ~ /say is now an iceberg because of @p[score_Class_min=4,score_Class=4,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=4,score_TouchBy=4,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=4,score_Class=4,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=4,score_TouchBy=4,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=4,score_Class=4,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1