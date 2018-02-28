execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /summon Ocelot ~ ~ ~ {Silent:1,Tags:["123B","123G","Blue","NotOrange"]}
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_Spell3=899,team=Blue] ~ ~ ~ /summon Spider ~ ~ ~ {Silent:1,Tags:["123B","123G","Blue","NotOrange"]}
scoreboard players set @e[type=Ocelot,tag=123B,score_Timer_min=-99] Timer -100
scoreboard players set @e[type=Spider,tag=123B,score_Timer_min=-99] Timer -100
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=2,tag=IsPlaying,score_EffPoison_min=1001] EffPoison 1120
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=7,tag=IsPlaying] EffPoison 1120
execute @e[tag=123B] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=2,tag=IsPlaying,score_EffPoison_min=1001] EffPoison 1120
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=2,tag=IsPlaying,score_EffPoison_min=1001] TouchBy 12
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=7,tag=IsPlaying] TouchBy 12
execute @e[tag=123B] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=2,tag=IsPlaying,score_EffPoison_min=1001] TouchBy 12
scoreboard players set @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_EffInvisibility=100] EffInvisibility 100
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899] ~ ~ ~ /playsound block.fire.ambient record @a[r=30] ~ ~ ~ 2 1 1
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899] ~ ~ ~ /playsound item.flintandsteel.use @a ~ ~ ~ 2 1 1
scoreboard players set @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_EffSpeed=1100] EffSpeed 1100
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /summon Ocelot ~ ~ ~ {Silent:1,Tags:["123R","123G","Orange","NotBlue"]}
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,score_Spell3=899,team=Orange] ~ ~ ~ /summon Spider ~ ~ ~ {Silent:1,Tags:["123R","123G","Orange","NotBlue"]}
scoreboard players set @e[type=Ocelot,tag=123R,score_Timer_min=-99] Timer -100
scoreboard players set @e[type=Spider,tag=123R,score_Timer_min=-99] Timer -100
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,tag=IsPlaying] EffPoison 1120
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=2,tag=IsPlaying,score_EffPoison_min=1001] EffPoison 1120
execute @e[tag=123R] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=2,tag=IsPlaying,score_EffPoison_min=1001] EffPoison 1120
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=899,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,tag=IsPlaying] TouchBy 12
execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=2,tag=IsPlaying,score_EffPoison_min=1001] TouchBy 12
execute @e[tag=123R] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=2,tag=IsPlaying,score_EffPoison_min=1001] TouchBy 12

execute @a[m=2,score_Class_min=12,score_Class=12,score_Spell3_min=800] ~ ~ ~ /particle flame ~ ~0.3 ~ 1 0 1 0 5 force
execute @e[type=!Player,tag=123G] ~ ~ ~ /particle flame ~ ~0.3 ~ 1 0 1 0 5 force