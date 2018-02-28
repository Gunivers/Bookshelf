execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=-981,score_Spell3=-1,score_InGame_min=1,m=2] ~ ~ ~ detect ~ ~-0.3 ~ air 0 /scoreboard players set @p[r=1,score_Class_min=16,score_Class=16,score_Spell3_min=-981,score_Spell3=-1,score_InGame_min=1,m=2] Spell3 -980
scoreboard players set @a[score_Class_min=16,score_Class=16,score_Spell3_min=-977,score_Spell3=-1,score_InGame_min=1,m=2] Spell3 2400

replaceitem entity @a[score_Class_min=16,score_Class=16,score_Spell3=-1,score_InGame_min=1,m=2] slot.hotbar.3 minecraft:gunpowder 1 0 {display:{Name:"PRESS SPACE and fall on your target !"},HideFlags:63}
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400,team=Blue] ~ ~ ~ /scoreboard players set @e[r=5,team=!Blue,tag=IsPlaying] EffDamage 1
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400,team=Blue] ~ ~ ~ /scoreboard players set @e[r=5,team=!Blue,tag=IsPlaying,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400,team=Blue] ~ ~ ~ /scoreboard players set @a[r=5,team=Orange,tag=IsPlaying] TouchBy 16
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400,team=Blue] ~ ~ ~ /kill @a[r=5,team=Orange,tag=IsPlaying,score_Health=16]
scoreboard players add @a[score_Class_min=16,score_Class=16,score_InGame_min=1,m=2,score_Spell3=-1] Spell3 1
effect @a[score_Class_min=16,score_Class=16,score_Spell3=-998,score_Spell3_min=-999,score_InGame_min=1,m=2] levitation 1 25 true
execute @a[score_Class_min=16,score_Class=16,score_Spell3=-998,score_Spell3_min=-999,score_InGame_min=1,m=2] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
scoreboard players set @a[score_Class_min=16,score_Class=16,score_Spell3=-1,score_InGame_min=1,m=2,score_HaveElytra=3] EffPlane 3

execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400] ~ ~ ~ /playsound entity.enderdragon.growl record @a[r=15] ~ ~ ~ 2 2 1
scoreboard players set @a[score_Class_min=16,score_Class=16,score_Spell3=-1,score_InGame_min=1,m=2,score_EffInvulnerable=3] EffInvulnerable 3
effect @a[score_EffPlane_min=1,tag=IsPlaying,score_Class_min=16,score_Class=16] minecraft:glowing 1 1 true
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400,team=Orange] ~ ~ ~ /scoreboard players set @e[r=5,team=!Orange,tag=IsPlaying] EffDamage 1
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400,team=Orange] ~ ~ ~ /scoreboard players set @e[r=5,team=!Orange,tag=IsPlaying,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400,team=Orange] ~ ~ ~ /scoreboard players set @a[r=5,team=Blue,tag=IsPlaying] TouchBy 16
execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400,team=Orange] ~ ~ ~ /kill @a[r=5,team=Blue,tag=IsPlaying,score_Health=16]

execute @a[score_Class_min=16,score_Class=16,score_Spell3_min=2400] ~ ~ ~ /particle largesmoke ~ ~1 ~ 3 0.5 3 0 100 force