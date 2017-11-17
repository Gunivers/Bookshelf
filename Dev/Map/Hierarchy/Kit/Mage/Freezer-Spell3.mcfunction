execute @e[type=armor_stand,score_Class_min=-4,score_Class=-4] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 1 1 0.2 10 force
execute @e[type=armor_stand,score_Class_min=4,score_Class=4] ~ ~ ~ /particle fireworksSpark ~ ~ ~ 1 1 1 0.2 10 force


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