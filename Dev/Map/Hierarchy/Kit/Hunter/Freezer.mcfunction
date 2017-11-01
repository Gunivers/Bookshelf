execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /execute @a[tag=IsPlaying,team=Blue] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Blue,score_EffDamage=1] EffDamage 1
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /execute @a[tag=IsPlaying,team=Blue] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Blue,score_EffSlow=3020] EffSlow 3020
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /execute @a[tag=IsPlaying,team=Blue] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Blue] TouchBy 24
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /execute @a[tag=IsPlaying,team=Blue] ~ ~ ~ /playsound entity.blaze.ambient record @a[r=30] ~ ~ ~ 2 2 1
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /execute @a[tag=IsPlaying,team=Blue] ~ ~ ~ /playsound entity.firework.blast_far record @a[r=30] ~ ~ ~ 2 1 1
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /execute @a[tag=IsPlaying,team=Orange] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Orange,score_EffDamage=1] EffDamage 1
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /execute @a[tag=IsPlaying,team=Orange] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Orange,score_EffSlow=3020] EffSlow 3020
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /execute @a[tag=IsPlaying,team=Orange] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Orange] TouchBy 24
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /execute @a[tag=IsPlaying,team=Orange] ~ ~ ~ /playsound entity.blaze.ambient record @a[r=30] ~ ~ ~ 2 2 1
execute @a[score_InGame_min=1,score_Class=24,score_Class_min=24,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /execute @a[tag=IsPlaying,team=Orange] ~ ~ ~ /playsound entity.firework.blast_far record @a[r=30] ~ ~ ~ 2 1 1
execute @e[type=armor_stand,score_Class_min=-24,score_Class=-24] ~ ~ ~ /summon armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["HF2B","HF2"]}
execute @e[type=armor_stand,tag=HF2B] ~ ~ ~ /scoreboard players set @e[team=!Blue,scire_InGame_min=1,score_LifeState_min=500,score_EffSlow=1002,r=3] EffSlow 1002
execute @e[type=armor_stand,tag=HF2B] ~ ~ ~ /scoreboard players set @e[team=!Blue,scire_InGame_min=1,score_LifeState_min=500,score_EffPoison=1002,r=3] EffPoison 1002
execute @e[type=armor_stand,tag=HF2B] ~ ~ ~ /scoreboard players set @e[team=Blue,scire_InGame_min=1,score_LifeState_min=500,score_EffSpeed=2002,r=3] EffSpeed 2002
execute @e[type=armor_stand,tag=HF2B] ~ ~ ~ /scoreboard players set @e[team=Blue,scire_InGame_min=1,score_LifeState_min=500,score_EffJump=2,r=3] EffJump 2
execute @e[type=armor_stand,tag=HF2B] ~ ~ ~ /scoreboard players set @e[team=!Blue,scire_InGame_min=1,score_LifeState_min=500,r=3] TouchBy 24
execute @e[type=armor_stand,score_Class_min=-24,score_Class=-24] ~ ~ ~ /playsound block.snow.step record @a[r=30] ~ ~ ~ 2 1 1
scoreboard players tag @e[type=armor_stand,tag=HF2B] add HF2BonGround
execute @e[type=armor_stand,tag=HF2B] ~ ~ ~ detect ~ ~-1 ~ air 0 /scoreboard players tag @e[type=armor_stand,tag=HF2B,c=1] remove HF2BonGround
execute @e[type=armor_stand,tag=HF2BonGround] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1.5 0.3 1.5 0 1 force
scoreboard players set @e[type=armor_stand,tag=HF2R,score_Timer_min=0] Timer -1
scoreboard players set @e[type=armor_stand,tag=HF2B,score_Timer_min=0] Timer -100
scoreboard players set @e[type=armor_stand,score_Class_min=24,score_Class=24,score_Timer_min=-184] Timer -185
scoreboard players set @e[type=armor_stand,score_Class_min=-24,score_Class=-24,score_Timer_min=-18] Timer -185
execute @a[tag=IsPlaying,score_Class_min=24,score_Class=24,team=Orange,score_Spell2_min=399,score_Spell2=399] ~ ~ ~ /tp @e[r=5,c=1,type=armor_stand,score_Class_min=24,score_Class=24] ~ ~-2 ~
execute @a[tag=IsPlaying,score_Class_min=24,score_Class=24,team=Blue,score_Spell2_min=399,score_Spell2=399] ~ ~ ~ /tp @e[r=5,c=1,type=armor_stand,score_Class_min=-24,score_Class=-24] ~ ~-2 ~
execute @e[type=armor_stand,score_Class_min=24,score_Class=24] ~ ~ ~ /summon armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,ActiveEffects:[{Id:9,Amplifier:100,Duration:30,ShowParticles:0b},{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}],Tags:["HF2R","HF2"]}
execute @e[type=armor_stand,tag=HF2R] ~ ~ ~ /scoreboard players set @e[team=!Orange,scire_InGame_min=1,score_LifeState_min=500,score_EffSlow=1002,r=3] EffSlow 1002
execute @e[type=armor_stand,tag=HF2R] ~ ~ ~ /scoreboard players set @e[team=!Orange,scire_InGame_min=1,score_LifeState_min=500,score_EffPoison=1002,r=3] EffPoison 1002
execute @e[type=armor_stand,tag=HF2R] ~ ~ ~ /scoreboard players set @e[team=Orange,scire_InGame_min=1,score_LifeState_min=500,score_EffSpeed=2002,r=3] EffSpeed 2002
execute @e[type=armor_stand,tag=HF2R] ~ ~ ~ /scoreboard players set @e[team=Orange,scire_InGame_min=1,score_LifeState_min=500,score_EffJump=2,r=3] EffJump 2
execute @e[type=armor_stand,tag=HF2R] ~ ~ ~ /scoreboard players set @e[team=!Orange,scire_InGame_min=1,score_LifeState_min=500,r=3] TouchBy 24
execute @e[type=armor_stand,score_Class_min=24,score_Class=24] ~ ~ ~ /playsound block.snow.step record @a[r=30] ~ ~ ~ 2 1 1
scoreboard players tag @e[type=armor_stand,tag=HF2R] add HF2RonGround
execute @e[type=armor_stand,tag=HF2R] ~ ~ ~ detect ~ ~-1 ~ air 0 /scoreboard players tag @e[type=armor_stand,tag=HF2R,c=1] remove HF2RonGround
execute @e[type=armor_stand,tag=HF2RonGround] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1.5 0.3 1.5 0 1 force
scoreboard players remove @a[score_UseFishing_min=2,score_UseFishing=2,score_Class_min=24,score_Class=24,score_InGame_min=1] UpgradedWeapon 1
scoreboard players set @a[score_Class_min=24,score_Class=24,score_InGame_min=1,score_UpgradedWeapon=-2] UpgradedWeapon 0
scoreboard players set @a[score_Class_min=24,score_Class=24,score_InGame_min=1,score_UpgradedWeapon=-1,score_EffTank=2] EffTank 2
scoreboard players set @a[score_Class_min=24,score_Class=24,score_InGame_min=1,score_Spell1_min=299] Spell2 0
scoreboard players set @a[score_Class_min=24,score_Class=24,score_InGame_min=1,score_UpgradedWeapon=-1,score_EffResistance=1002] EffResistance 1002
replaceitem entity @a[m=2,score_InGame_min=1,score_Class_min=24,score_Class=24,score_Spell1=298,score_Spell1_min=298] slot.container.16 tipped_arrow 3 0 {Potion:slowness}
clear @a[score_Class_min=24,score_Class=24,score_InGame_min=1,score_UpgradedWeapon_min=0] iron_sword
clear @a[m=2,score_InGame_min=1,score_Class_min=24,score_Class=24,score_UpgradedWeapon=-1] tipped_arrow
execute @a[score_InGame_min=1,score_Class_min=24,score_Class=24,score_Spell1_min=299,score_Spell1=299] ~ ~ ~ /playsound entity.creeper.hurt record @a[r=30] ~ ~ ~ 2 2 1
replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=24,score_Class=24,score_UpgradedWeapon=-1,m=2] slot.hotbar.0 iron_sword 1 0 {Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Name:"Basic Attack"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]}
replaceitem entity @a[score_InGame_min=1,score_Class_min=24,score_Class=24,score_EffNoMove_min=1,score_Spell2=0,m=2] slot.hotbar.2 minecraft:barrier 1 0 {display:{Name:"Don't Move !"}}
execute @a[score_TouchBy_min=24,score_TouchBy=24,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle splash ~ ~1 ~ 0.5 1 0.5 0 40 force
execute @a[score_TouchBy_min=24,score_TouchBy=24,score_InGame_min=1,score_TakeDamage_min=2000,score_TakeDamage=2999,m=2,score_EffPoison_min=1] ~ ~ ~ /particle dripWater ~ ~1 ~ 0.5 1 0.5 0 20 force
scoreboard players set @a[score_Class_min=24,score_Class=24,score_UseFishing_min=2,score_UseFishing=2,score_InGame_min=1,m=2] Spell1 300
scoreboard players set @a[score_Class_min=24,score_Class=24,score_UseCarrot_min=2,score_UseCarrot=2,score_InGame_min=1,m=2] Spell2 400
scoreboard players set @a[score_Class_min=24,score_Class=24,score_UseXp_min=2,score_UseXp=2,score_InGame_min=1,m=2] Spell3 900
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell1=0,score_Class_min=24,score_Class=24,m=2] slot.hotbar.1 minecraft:fishing_rod 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Melting  0✸  15s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell2=0,score_Class_min=24,score_Class=24,m=2,score_EffNoMove=0] slot.hotbar.2 minecraft:carrot_on_a_stick 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Frozen Path  0✸  20s"},HideFlags:63}
replaceitem entity @a[score_InGame_min=1,score_EffSilence=0,score_Spell3=0,score_Class_min=24,score_Class=24,m=2] slot.hotbar.3 minecraft:experience_bottle 1 0 {Unbreakable:1,ench:[{id:19,lvl:0}],display:{Name:"Cold Breath  0✸  45s"},HideFlags:63}
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=24,score_TouchBy=24,team=Orange] ~ ~ ~ /say is now an iceberg because of @p[score_Class_min=24,score_Class=24,team=Blue,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=24,score_TouchBy=24,team=Blue] ~ ~ ~ /say is now an iceberg because of @p[score_Class_min=24,score_Class=24,team=Orange,score_InGame_min=1]
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=24,score_TouchBy=24,team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=24,score_Class=24,team=Blue,score_InGame_min=1,tag=!InTraining] KillNumber 1
execute @a[score_EffNoDie=0,score_IsDead_min=2,score_IsDead=2,score_InGame_min=1,score_TouchBy_min=24,score_TouchBy=24,team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=24,score_Class=24,team=Orange,score_InGame_min=1,tag=!InTraining] KillNumber 1