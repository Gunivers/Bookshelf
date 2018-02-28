execute @a[score_Spell3_min=1199,score_Spell3=1199,score_Class_min=13,score_Class=13,team=Blue] ~ ~ ~ scoreboard players set @a[tag=AffectByBlue,r=7] AT3G 140
scoreboard players tag @a remove 133B
scoreboard players tag @a[tag=AffectByBlue,score_AT3G_min=1] add 133B
execute @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13,team=Blue] ~ ~ ~ scoreboard players tag @a[tag=AffectByBlue,score_AT3G_min=1,r=9] remove 133B
execute @a[tag=133B] ~ ~ ~ /particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute @a[team=Blue,score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200] ~ ~ ~ teleport @a[tag=133B,r=15] ~ ~3 ~
execute @a[team=Blue,score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200] ~ ~ ~ spreadplayers ~ ~ 1 3 false @a[tag=133B,r=15]
execute @a[tag=133B] ~ ~ ~ /particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute @a[tag=133B] ~ ~ ~ /playsound entity.endermen.teleport ambient @a[r=15]
scoreboard players tag @a[score_AT3G_min=1,team=Orange] add 133B2
execute @a[score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200,team=Blue] ~ ~ ~ /scoreboard players tag @a[score_AT3G_min=1,tag=AffectByBlue] remove 133B2
scoreboard players set @a[tag=133B2] AT3G 0
scoreboard players tag @a remove 133B2
scoreboard players remove @a[score_AT3G_min=1] AT3G 1
effect @a[score_AT3G_min=61] minecraft:blindness 3 0 true
effect @a[score_AT3G_min=21] glowing 1 0 true
execute @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13] ~ ~ ~ /particle cloud ~ ~-0.4 ~ 3 0 3 0 10 force
effect @a[score_Spell3_min=1080,score_Spell3=1200,score_Class_min=13,score_Class=13] glowing 1 0 true
effect @a[score_AT3G_min=21] minecraft:slowness 1 1 true
scoreboard players set @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13] UpgradedWeapon 2
execute @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13] ~ ~ ~ /particle largeexplode ~ ~-0.4 ~ 3 0 3 0 2 force
execute @a[score_Spell3_min=1199,score_Spell3=1199,score_Class_min=13,score_Class=13,team=Orange] ~ ~ ~ scoreboard players set @a[tag=AffectByOrange,r=7] AT3G 139
scoreboard players tag @a remove 133O
scoreboard players tag @a[tag=AffectByOrange,score_AT3G_min=1] add 133O
execute @a[score_Spell3_min=1060,score_Spell3=1200,score_Class_min=13,score_Class=13,team=Orange] ~ ~ ~ scoreboard players tag @a[tag=AffectByOrange,score_AT3G_min=1,r=9] remove 133O
execute @a[tag=133O] ~ ~ ~ /particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute @a[team=Orange,score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200] ~ ~ ~ teleport @a[tag=133O,r=15] ~ ~3 ~
execute @a[team=Orange,score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200] ~ ~ ~ spreadplayers ~ ~ 1 3 false @a[tag=133O,r=10]
execute @a[tag=133O] ~ ~ ~ /particle cloud ~ ~ ~ 0.01 0.4 0.01 1 50 force
execute @a[tag=133O] ~ ~ ~ /playsound entity.endermen.teleport ambient @a[r=15]
scoreboard players tag @a[score_AT3G_min=1,team=Blue] add 133O2
execute @a[score_Class_min=13,score_Class=13,score_Spell3_min=1060,score_Spell3=1200,team=Orange] ~ ~ ~ /scoreboard players tag @a[score_AT3G_min=1,tag=AffectByOrange] remove 133O2
scoreboard players set @a[tag=133O2] AT3G 0
scoreboard players tag @a remove 133O2
execute @a[score_InGame_min=1,score_Class_min=13,score_Class=13,score_Spell3_min=1199,score_Spell3=1199,m=2] ~ ~ ~ /playsound entity.lightning.thunder record @a[r=30] ~ ~ ~ 2 0.5 1