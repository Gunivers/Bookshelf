scoreboard players reset @a[m=3] LocationCheck
scoreboard players reset @a[m=2,tag=IsPlaying] LocationCheck
execute @a[m=2,tag=IsPlaying,score_Timer_min=1,score_Timer=1,team=Blue] ~ ~ ~ detect ~ 0 ~ barrier 0 effect @p regeneration 2 1 true
execute @a[m=2,tag=IsPlaying,score_Timer_min=1,score_Timer=1,team=Orange] ~ ~ ~ detect ~ 1 ~ barrier 0 effect @p regeneration 2 1 true
execute @a[m=2,tag=IsPlaying,team=Blue] ~ ~ ~ detect ~ 0 ~ barrier 0 effect @p resistance 2 2 true
execute @a[m=2,tag=IsPlaying,team=Orange] ~ ~ ~ detect ~ 1 ~ barrier 0 effect @p resistance 2 2 true
execute @a[m=2,tag=IsPlaying,team=Blue] ~ ~ ~ detect ~ 0 ~ barrier 0 scoreboard players set @p[r=1,score_EffMana=10] EffMana 10
execute @a[m=2,tag=IsPlaying,team=Orange] ~ ~ ~ detect ~ 1 ~ barrier 0 scoreboard players set @p[r=1,score_EffMana=10] EffMana 10
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~ ~ heavy_weighted_pressure_plate 1 title @p[r=1] title ["",{"text":"Return to fight !","color":"orange"}]
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~ ~ heavy_weighted_pressure_plate 0 title @p[r=1] title ["",{"text":"Return to fight !","color":"orange"}]
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~-1 ~ heavy_weighted_pressure_plate 1 title @p[r=1] title ["",{"text":"Return to fight !","color":"orange"}]
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~-1 ~ heavy_weighted_pressure_plate 0 title @p[r=1] title ["",{"text":"Return to fight !","color":"orange"}]
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~-2 ~ heavy_weighted_pressure_plate 1 title @p[r=1] title ["",{"text":"Return to fight !","color":"orange"}]
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~-2 ~ heavy_weighted_pressure_plate 0 title @p[r=1] title ["",{"text":"Return to fight !","color":"orange"}]
scoreboard players add @e OffSide 0
scoreboard players remove @e[score_OffSide=209] OffSide 1
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~ ~ heavy_weighted_pressure_plate 1 scoreboard players add @p[r=1] OffSide 2
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~-1 ~ heavy_weighted_pressure_plate 1 scoreboard players add @p[r=1] OffSide 2
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~-2 ~ heavy_weighted_pressure_plate 1 scoreboard players add @p[r=1] OffSide 2
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~ ~ heavy_weighted_pressure_plate 0 scoreboard players add @p[r=1] OffSide 2
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~-1 ~ heavy_weighted_pressure_plate 0 scoreboard players add @p[r=1] OffSide 2
execute @a[tag=IsPlaying,m=2] ~ ~ ~ detect ~ ~-2 ~ heavy_weighted_pressure_plate 0 scoreboard players add @p[r=1] OffSide 2
kill @a[tag=IsPlaying,m=2,score_OffSide_min=200]
scoreboard players set @a[tag=!IsPlaying] OffSide 0
scoreboard players set @a[score_LideState=400] OffSide 0
scoreboard players operation Blue Info = @e[type=Villager,name=Blue] Score
scoreboard players operation Orange Info = @e[type=Villager,name=Orange] Score
scoreboard players remove @e[type=Villager,x=0,y=65,z=0,r=10,score_Timer_min=10,score_Timer=10,score_Score_min=1] Score 1
scoreboard players reset PlayersInBlue: Info
scoreboard players reset PlayersInOrange: Info
scoreboard players reset PlayersInRandom:
scoreboard players reset =-=-=-= Info

#Respawn Cooldown
execute @a[score_LifeState_min=1,score_LifeState=400] ~ ~ ~ scoreboard players operation @s RespawnCooldown = @s LifeState
execute @a[score_LifeState_min=1,score_LifeState=400] ~ ~ ~ scoreboard players operation @s RespawnCooldown /= 20 Constant
execute @a[score_LifeState_min=1,score_LifeState=400] ~ ~ ~ scoreboard players remove @s RespawnCooldown 20
execute @a[score_LifeState_min=1,score_LifeState=400] ~ ~ ~ scoreboard players operation @s RespawnCooldown *= Neg Constant
execute @a[score_RespawnCooldown_min=1,score_RespawnCooldown=3,m=3,team=!Spec] ~ ~ ~ title @s title ["",{"score":{"name":"@p[r=1]","objective":"RespawnCooldown"},"color":"red"}]
execute @a[score_RespawnCooldown_min=4,score_RespawnCooldown=10,m=3,team=!Spec] ~ ~ ~ title @s title ["",{"score":{"name":"@p[r=1]","objective":"RespawnCooldown"},"color":"gold"}]
execute @a[score_RespawnCooldown_min=11,score_RespawnCooldown=20,m=3,team=!Spec] ~ ~ ~ title @s title ["",{"score":{"name":"@p[r=1]","objective":"RespawnCooldown"},"color":"yellow"}]

#Respawn sets
scoreboard players set @a[score_LifeState=400] UpgradedWeapon 0
scoreboard players set @a[score_LifeState=400] HaveObjective 0
scoreboard players set @a[score_LifeState=498,score_EffNoMalus=2] EffNoMalus 2
scoreboard players set @a[score_LifeState=350,score_EffNoBonus=2] EffNoBonus 2
clear @a[score_LifeState_min=1,score_LifeState=5]
scoreboard players set @a[score_LifeState=400] C3 0


execute @a[score_InGame_min=1,score_InAirFeet_min=1,score_InAirHead_min=1] ~ ~ ~ detect ~ ~ ~ air 0 spawnpoint @p ~ ~ ~
scoreboard players set @a[score_Class_min=11,score_Class=16,score_Damage_min=1,score_EffRegen=30] EffRegen 30
scoreboard players set @a[score_Class_min=21,score_Class=21,score_Damage_min=1,score_UpgradedWeapon=-1,score_EffRegen=30] EffRegen 30
blockdata 4991 101 5000 {Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"A game is\"}",Text3:"{\"text\":\" already started\"}",Text4:"{\"text\":\" \"}"}
blockdata 5001 101 5009 {Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"A game is\"}",Text3:"{\"text\":\" already started\"}",Text4:"{\"text\":\" \"}"}
blockdata 4999 101 5009 {Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"A game is\"}",Text3:"{\"text\":\" already started\"}",Text4:"{\"text\":\" \"}"}
fill -8 64 -24 -9 64 -24 minecraft:stone 0 replace minecraft:redstone_block
tp @a[2000,100,2000,r=70,m=2] 5000 100 5000
blockdata 4990 101 4998 {Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"A game is\"}",Text3:"{\"text\":\" already started\"}",Text4:"{\"text\":\" \"}"}
scoreboard players tag @a remove inJungle
execute @a[score_InGame_min=1,m=2,score_HaveObjective=0,score_HaveObjective_min=0] ~ ~ ~ detect ~ ~-10 ~ barrier 0 scoreboard players tag @p add inJungle
execute @a[team=Orange,score_InGame_min=1,m=2] ~ ~ ~ scoreboard players tag @a[team=Blue,r=5] remove inJungle
execute @a[team=Blue,score_InGame_min=1,m=2] ~ ~ ~ scoreboard players tag @a[team=Orange,r=5] remove inJungle
scoreboard players set @a[tag=inJungle,score_EffInvisibility=2] EffInvisibility 2
effect @a[tag=inJungle,score_Class_min=11,score_Class=19] speed 1 0 true
scoreboard players add @a[score_Jump_min=1] Jump 1
scoreboard players set @a[score_Jump_min=3] Jump 0
execute @a[score_Jump_min=1,score_Jump=1,score_InGame_min=1] ~ ~ ~ playsound block.cloth.step record @a[r=30] ~ ~ ~ 2 2 1
execute @a[score_Jump_min=2,score_Jump=2] ~ ~ ~ particle blockcrack_1 ~ ~-0.4 ~ 0.1 0.1 0.1 0 5 force
scoreboard players operation @e[type=Villager,name=Blue,c=1] Surrend = @a[score_InGame_min=1,tag=!Surrend,team=Blue] 1
scoreboard players operation @e[type=Villager,name=Orange,c=1] Surrend = @a[score_InGame_min=1,tag=!Surrend,team=Orange] 1
execute @e[type=Villager,name=Blue,c=1,score_Surrend=0] ~ ~ ~ setblock -12 65 -26 redstone_block 0
execute @e[type=Villager,name=Orange,c=1,score_Surrend=0] ~ ~ ~ setblock -11 65 -26 redstone_block 0


scoreboard players set @a[score_Back_min=140,score_InGame_min=1] Mana 300
scoreboard players set @a[score_LifeState_min=2,score_LifeState=3,score_InGame_min=1] Mana 300
effect @a[score_Back_min=140,score_InGame_min=1] resistance 5 100 true
effect @a[score_EffNoDie=0,score_LifeState=400,score_LifeState_min=398,score_InGame_min=1] resistance 5 100 true
effect @a[score_Back_min=140,score_InGame_min=1] regeneration 2 127 true
effect @a[score_LifeState=2,score_LifeState_min=1,score_InGame_min=1] regeneration 2 127 true
effect @a[score_LifeState=2,score_LifeState_min=1,score_Class_min=1,score_Class=9,score_InGame_min=1] health_boost 999999 9 true
effect @a[score_LifeState=2,score_LifeState_min=1,score_Class_min=11,score_Class=19,score_InGame_min=1] health_boost 999999 4 true
effect @a[score_LifeState=2,score_LifeState_min=1,score_Class_min=21,score_Class=29,score_InGame_min=1] health_boost 999999 4 true
effect @a[score_LifeState=2,score_LifeState_min=1,score_Class_min=31,score_Class=39,score_InGame_min=1] health_boost 999999 9 true
effect @a[score_LifeState=2,score_LifeState_min=1,score_Class_min=41,score_Class=49,score_InGame_min=1] health_boost 999999 14 true
effect @a[score_Back=140,score_Back_min=140,score_Class_min=1,score_Class=9,score_InGame_min=1] health_boost 999999 9 true
effect @a[score_Back=140,score_Back_min=140,score_Class_min=11,score_Class=19,score_InGame_min=1] health_boost 999999 4 true
effect @a[score_Back=140,score_Back_min=140,score_Class_min=21,score_Class=29,score_InGame_min=1] health_boost 999999 4 true
effect @a[score_Back=140,score_Back_min=140,score_Class_min=31,score_Class=39,score_InGame_min=1] health_boost 999999 9 true
effect @a[score_Back=140,score_Back_min=140,score_Class_min=41,score_Class=49,score_InGame_min=1] health_boost 999999 14 true
execute @a[score_InGame_min=1,m=2,score_Timer_min=10,score_Timer=10,score_IsAFK_min=10] ~ ~ ~ playsound entity.villager.ambient record @a[r=30] ~ ~ ~ 2 1 1
scoreboard players set @a[score_IsWalking_min=1] IsAFK 0
scoreboard players add @a[score_InGame_min=1,m=2,score_Timer_min=10,score_Timer=10] IsAFK 1
execute @e[tag=IsPlaying] ~ ~ ~ fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air 0 replace fire
gamemode 2 @a[score_LifeState=450,score_LifeState_min=400,m=3,team=!Spec]
replaceitem entity @a[score_EffNoDie=0,score_LifeState=400,score_LifeState_min=5,team=!Spec] slot.armor.head minecraft:air
execute @e ~ ~ ~ fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air 0 replace fire
scoreboard players set @a[score_Respawn_min=-19,score_Respawn=-19] EffNoDie 0
title @a[score_InGame_min=1,score_LifeState=400] subtitle ["",{"text":""}]
gamemode 3 @a[score_EffNoDie=0,score_LifeState=399,m=2]
scoreboard teams join Orange @r[team=Random,score_InGame_min=1]
scoreboard teams join Blue @r[team=Random,score_InGame_min=1]
execute @a[x=2000,y=100,z=2000,rm=70,score_InGame_min=1,m=2,score_Back=0,score_Back_min=0] ~ ~ ~ function Hierarchy:Book
scoreboard players set @a[score_InGame_min=1,score_Back_min=-2,score_Drop=0] Back -3 {SelectedItem:{id:"minecraft:written_book"}}
scoreboard players add @a[score_Back=-1] Back 1
scoreboard players set @a[score_TakeDamage_min=1] Back 0
scoreboard players set @a[tag=IsPlaying,score_Drop_min=1,score_Drop=4] Back 2 {SelectedItem:{id:"minecraft:written_book"}}
scoreboard players set @a[score_Back_min=20] EffSilence 2
replaceitem entity @a[score_InGame_min=1,score_Back_min=1] slot.hotbar.8 gunpowder 1 0 {display:{Name:"Back to base, don't move !"}}
scoreboard players set @a[score_IsWalking_min=20,score_Back_min=1] Back 0
scoreboard players add @a[score_Back_min=1] Back 1
execute @a[score_Back_min=10] ~ ~ ~ particle portal ~ ~1 ~ 0.1 0.5 0.1 0 1
execute @a[score_Back_min=120] ~ ~ ~ particle largesmoke ~ ~1.5 ~ 0.1 0.1 0.1 0 1
effect @a[score_Back_min=1] nausea 4 0 true
execute @a[score_Back=5,score_Back_min=5] ~ ~ ~ playsound block.portal.travel record @p ~ ~ ~ 2 2 1
scoreboard players set @a[score_Back_min=161] Back 0
scoreboard players set @a[score_HaveObjective_min=1] Back 0
kill @e[2000,100,2000,r=50,type=!Player]
scoreboard players reset @a[2000,100,2000,rm=70,score_InGame_min=1] AntiCheat
tellraw @a[2000,100,2000,r=10,score_AntiCheat_min=9,score_AntiCheat=9] ["",{"text":"> Sorry, but the training room is not accessible during the game","color":"orange"}]
scoreboard players reset @a[team=Spec] AntiCheat
execute @a[score_InGame_min=1,m=2,score_TakeDamage_min=1,team=Orange] ~ ~ ~ scoreboard players operation @p[team=Orange,r=1] TouchBy = @p[team=Blue,score_Damage_min=1,score_InGame=1,m=2,r=5] Class
execute @a[score_InGame_min=1,m=2,score_TakeDamage_min=1,team=Blue] ~ ~ ~ scoreboard players operation @p[team=Blue,r=1] TouchBy = @p[team=Orange,score_Damage_min=1,score_InGame=1,m=2,r=5] Class
execute @e[type=Villager,name=Orange,score_Score_min=1,score_Score=1] ~ ~ ~ execute @e[type=Villager,name=Blue,score_Score_min=1,score_Score=1] ~ ~ ~ setblock -13 65 -26 redstone_block 0 destroy
execute @e[type=Villager,name=Orange,score_Score_min=-999,score_Score=0] ~ ~ ~ setblock -11 65 -26 redstone_block 0 destroy
execute @e[type=Villager,name=Blue,score_Score_min=-999,score_Score=0] ~ ~ ~ setblock -12 65 -26 redstone_block 0 destroy
execute @a[score_InGame_min=1,m=2] ~ ~ ~ scoreboard players operation @p[r=1] NextCoins = @p[r=1] KillNumber
execute @a[score_InGame_min=1,m=2,score_DeathNumber_min=1] ~ ~ ~ scoreboard players operation @p[r=1] NextCoins = @p[r=1] DeathNumber
scoreboard players add @a[score_InGame_min=1,m=2] NextCoins 1
execute @a[score_InGame_min=1,m=2,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players operation @p[r=1] Coins += @p[r=1] NextCoins
execute @a[score_InGame_min=1,m=2,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players operation @p[r=1] CoinsNumber += @p[r=1] NextCoins