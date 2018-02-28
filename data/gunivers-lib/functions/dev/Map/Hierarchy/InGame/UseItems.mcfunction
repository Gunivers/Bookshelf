scoreboard players add @a[score_UseIronAxe_min=1] UseIronAxe 1
scoreboard players set @a[score_UseIronAxe_min=3] UseIronAxe 0
scoreboard players tag @e[score_UseCarrot_min=1,score_UseCarrot=1] add DirShoot
clear @a[score_UseCarrot_min=1,score_UseCarrot=1,m=2] minecraft:carrot_on_a_stick
scoreboard players add @a[score_UseBow_min=1] UseBow 1
scoreboard players add @a[score_UseEgg_min=1] UseEgg 1
scoreboard players add @a[score_UseSnowball_min=1] UseSnowball 1
scoreboard players add @a[score_UseFishing_min=1] UseFishing 1
scoreboard players add @a[score_UseTp_min=1] UseTp 1
scoreboard players add @a[score_UseXp_min=1] UseXp 1
scoreboard players add @a[score_UsePotion_min=1] UsePotion 1
execute @a[score_UseBow_min=2,score_UseBow=2] ~ ~ ~ scoreboard players operation @e[type=Arrow,c=1,r=5] Class = @p Class
scoreboard players set @a[score_UseEgg_min=20] UseEgg 0
clear @a[score_UseSnowball_min=2,score_UseSnowball=2,m=2] snowball
clear @a[score_UseFishing_min=2,score_UseFishing=2,m=2] fishing_rod
effect @a[score_UseTp=3,score_UseTp_min=2] resistance 3 127 true
clear @a[score_UseXp_min=2,score_UseXp=2,m=2] experience_bottle
clear @a[score_UsePotion_min=2,score_UsePotion=2,m=2] splash_potion
scoreboard players add @a[score_UseCarrot_min=1] UseCarrot 1
scoreboard players set @e[score_UseCarrot_min=3] UseCarrot 0
execute @a[score_UseBow_min=2,score_UseBow=2,team=Blue] ~ ~ ~ scoreboard players operation @e[type=Arrow,c=1,r=5] Class *= Neg Constant
clear @a[score_UseBow_min=2,score_UseBow=2,m=2] bow
scoreboard players set @a[score_UseBow_min=2] UseBow 0
execute @a[score_UseEgg_min=2,score_UseEgg=3] ~ ~ ~ scoreboard players operation @e[type=egg,c=1,r=5] Class = @p Class
execute @a[score_UseEgg_min=2,score_UseEgg=3,team=Blue] ~ ~ ~ scoreboard players operation @e[type=egg,c=1,r=5] Class *= Neg Constant
clear @a[score_UseEgg_min=2,score_UseEgg=3,m=2] egg
execute @a[score_UseEgg_min=3,score_UseEgg=3] ~ ~ ~ summon Armor_Stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Tags:["Mage"]}
execute @a[score_UseEgg_min=3,score_UseEgg=3,team=Orange] ~ ~ ~ scoreboard players set @e[type=Armor_Stand,tag=Mage,c=1,r=5] Class 10
execute @a[score_UseEgg_min=3,score_UseEgg=3,team=Blue] ~ ~ ~ scoreboard players set @e[type=Armor_Stand,tag=Mage,c=1,r=5] Class -10
entitydata @e[type=egg] {NoGravity:1}
scoreboard players tag @e[type=egg,c=1,r=5] add Mage
execute @a[score_UseEgg_min=3,score_UseEgg=3] ~ ~ ~ scoreboard players operation @e[type=Armor_Stand,tag=Mage,c=1,r=5] TouchBy = @p[r=1] Class
execute @a[score_UseEgg_min=3,score_UseEgg=3,team=Blue] ~ ~ ~ scoreboard players operation @e[type=Armor_Stand,tag=Mage,c=1,r=5] TouchBy *= Neg Constant
execute @a[score_UseSnowball_min=2,score_UseSnowball=2] ~ ~ ~ scoreboard players operation @e[type=Snowball,c=1,r=5] Class = @p Class
execute @a[score_UseSnowball_min=2,score_UseSnowball=2,team=Blue] ~ ~ ~ scoreboard players operation @e[type=Snowball,c=1,r=5] Class *= Neg Constant
scoreboard players set @a[score_UseSnowball_min=5] UseSnowball 0
scoreboard players set @a[score_UseFishing_min=5] UseFishing 0
execute @a[score_UseTp_min=2,score_UseTp=2] ~ ~ ~ scoreboard players operation @e[type=ender_pearl,c=1,r=5] Class = @p Class
execute @a[score_UseTp_min=2,score_UseTp=2,team=Blue] ~ ~ ~ scoreboard players operation @e[type=ender_pearl,c=1,r=5] Class *= Neg Constant
clear @a[score_UseTp_min=2,score_UseTp=2,m=2] ender_pearl
scoreboard players set @a[score_UseTp_min=30] UseTp 0
scoreboard players set @a[score_UseXp_min=5] UseXp 0
scoreboard players set @a[score_UsePotion_min=5] UsePotion 0