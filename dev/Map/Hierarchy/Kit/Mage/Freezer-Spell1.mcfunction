scoreboard players add @a[score_Class_min=4,score_Class=4,score_Spell1=-1] Spell1 1
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1=-199] ~ ~ ~ /playsound entity.generic.drink record @a[r=7] ~ ~ ~ 2 1 1
effect @e[score_Class_min=4,score_Class=4,score_InGame_min=1,m=2,score_Spell1=-25] minecraft:slowness 1 1 true
scoreboard players set @a[score_Class_min=4,score_Class=4,score_InGame_min=1,m=2,score_Spell1=-1] EffInvisibility 2
scoreboard players set @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1=-1,m=2,score_EffInvulnerable=10] EffInvulnerable 10
scoreboard players set @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1=-1,m=2,score_EffFly=10] EffFly 5
execute @e[score_Class_min=4,score_Class=4,score_InGame_min=1,m=2,score_Spell1=-5] ~ ~ ~ /particle dripWater ~ ~0.5 ~ 0.5 0.5 0.5 0 3 force

scoreboard players set @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=-2,score_Spell1=-1] Spell1 600
scoreboard players set @a[score_Class_min=4,score_Class=4,score_UsePotion_min=2,score_UsePotion=2,score_InGame_min=1,score_Spell1=-1,m=2] Spell1 600
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=600,m=2] ~ ~ ~ /particle splash ~ ~0.5 ~ 7 0.1 7 1 1000 force
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=600] ~ ~ ~ /playsound entity.player.splash record @a[r=15] ~ ~ ~ 2 1 1

execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=600,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Blue,r=10] EffDamage 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=600,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Orange,r=10] EffDamage 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=600,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Blue,r=10] TouchBy 4
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell1_min=600,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[tag=IsPlaying,team=!Orange,r=10] TouchBy 4