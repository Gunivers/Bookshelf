#Entity basic sets
scoreboard players add @e 1 0
scoreboard players add @e Timer 0
scoreboard players add @e Class 0
scoreboard players set @e[score_Timer_min=38] 1 1
scoreboard players set @e[type=!Player] InGame 1
scoreboard players set @e[type=Villager] InGame 0
effect @e[type=Spider,tag=!Visible] invisibility 1 1 true
effect @e[type=Silverfish,tag=!Visible] invisibility 1 1 true
effect @e[type=Ocelot,tag=!Visible] invisibility 1 1 true
entitydata @e[type=Silverfish] {NoAI:1,Silent:1}
effect @e[type=Silverfish] invisibility 1 1 true
effect @e[type=Silverfish] resistance 1 100 true
scoreboard players set @e[type=Spider] EffInvisibility 10
scoreboard players set @e[type=Ocelot] EffInvisibility 10
scoreboard players add @e HaveObjective 0

#Not in game basic sets
scoreboard players set @a[score_InGame=0] Spell1 0
scoreboard players set @a[score_InGame=0] Spell2 0
scoreboard players set @a[score_InGame=0] Spell3 0
scoreboard players set @a[score_InGame=0] EffNoMalus 2
scoreboard players set @a[score_InGame=0] EffNoBonus 0
scoreboard players set @a[score_InGame=0] UpgradedWeapon 0
scoreboard players set @a[score_InGame=0] Coins 0
scoreboard players set @a[score_InGame=0] NextCoins 0
scoreboard players set @a[score_InGame=0] NextCoins 0
scoreboard players set @a[score_InGame=0] HaveObjective 0
scoreboard players set @a[score_InGame=0] UpgradedWeapon 0
scoreboard players set @a[score_InGame=0] HaveElytra 0
gamemode 2 @a[x=5000,y=100,z=5000,r=5,m=3]
effect @a[score_InGame=0] speed 1 1 true
scoreboard players enable @a Action
scoreboard players tag @a[score_InGame=0] remove Surrend
scoreboard players set @a[score_Timer=-200] Timer 1
xp -1L @a
scoreboard players add @e ChargeSpell 0

#Generic spells
execute @e[tag=IsPlaying,score_C3_min=1] ~ ~ ~ particle spell ~ ~2.2 ~ 0.1 0.1 0.1 0 1 force
scoreboard players add @a[score_InGame_min=1] Cooldown13S3 0

#Revive
scoreboard players tag @e[type=armor_stand] add NoLifeState
scoreboard players tag @e[type=Villager] add NoLifeState
scoreboard players set @e[type=!Player,tag=!NoLifeState] LifeState 500
scoreboard players reset @e[type=!Player,tag=NoLifeState] LifeState
scoreboard players set @a[m=1] LifeState 450
scoreboard players set @a[score_InGame=0,score_LifeState_min=0] LifeState 450
scoreboard players set @a[score_LifeState=-5] InGame 1
scoreboard players set @a[score_LifeState_min=500] LifeState 500
scoreboard players set @a[score_LifeState=-5] C15S3 0

#Location check & repair
scoreboard players set @a[x=5000,y=200,z=5000,r=70] LocationCheck 0
scoreboard players set @a[x=2000,y=100,z=2000,r=100] LocationCheck 0
scoreboard players reset @a[x=5000,y=100,z=5000,r=100] LocationCheck
scoreboard players add @a[rm=70,m=!1] LocationCheck 1
tp @a[score_LocationCheck_min=20] 5000 101 5000 90 0
scoreboard players reset @a[x=2000,y=100,z=2000,r=70] LocationCheck

#Basic effects
effect @a[score_InGame=0] weakness 1 100 true
effect @a[score_InGame=0] resistance 1 100 true
effect @a[score_InGame=0] speed 1 3 true
effect @e[score_InGame_min=1,score_LifeState_min=300] speed 1 1 true
effect @a[5000,100,5000,r=20,score_InGame=0,score_health_min=21] clear
effect @a[score_InGame=0] minecraft:regeneration 1 126 true
effect @a[score_LifeState=-1] minecraft:speed 1 1 true