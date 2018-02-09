#Endurance
effect @a[score_Saturation=2,score_InGame_min=1] hunger 0
effect @a[score_Sprint_min=0] saturation 0
effect @a[score_Sprint_min=1,score_InGame_min=1] hunger 2 127 true
effect @a[score_Timer_min=1,score_Timer=1,score_Sprint=0] saturation 1 0 true
scoreboard players set @a Sprint 0

#Random color
execute @e[type=Villager,name=Orange,score_Timer_min=10,score_Timer=10] ~ ~ ~ scoreboard teams option Random color dark_blue
execute @e[type=Villager,name=Orange,score_Timer_min=30,score_Timer=30] ~ ~ ~ scoreboard teams option Random color dark_red

#Disconnect
scoreboard players set @a[score_1=0] Disconnected 1
title @a[score_Disconnected_min=1] times 0 10 10
scoreboard players reset @a Disconnected

#Boat rotation
tp @e[type=Boat,tag=Rot] ~ ~ ~ ~23 ~

#Score decompt
scoreboard players remove @a[score_EffNoMove_min=1] EffNoMove 1
scoreboard players remove @a[score_EffNoTp_min=1] EffNoTp 1
scoreboard players remove @a[score_EffNoBonus_min=1] EffNoBonus 1
scoreboard players remove @a[score_UpgradedWeapon_min=1] UpgradedWeapon 1
scoreboard players remove @a[score_PrivateSpell_min=1] PrivateSpell 1
scoreboard players remove @a[score_Spell1_min=1] Spell1 1
scoreboard players remove @a[score_Spell2_min=1] Spell2 1
scoreboard players remove @a[score_Spell3_min=1] Spell3 1

#Cooldown
replaceitem entity @a[score_InGame_min=1,score_Spell1_min=1,m=2,score_EffSilence=0] slot.hotbar.1 dye 1 8 {display:{Name:"Cooldown"}}
replaceitem entity @a[score_InGame_min=1,score_Spell2_min=1,m=2,score_EffSilence=0] slot.hotbar.2 dye 1 8 {display:{Name:"Cooldown"}}
replaceitem entity @a[score_InGame_min=1,score_Spell3_min=1,m=2,score_EffSilence=0,score_Class_min=33] slot.hotbar.3 dye 1 8 {display:{Name:"Cooldown"}}
replaceitem entity @a[score_InGame_min=1,score_Spell3_min=1,m=2,score_EffSilence=0,score_Class=31] slot.hotbar.3 dye 1 8 {display:{Name:"Cooldown"}}
scoreboard players remove @e[score_ChargeSpell_min=1] ChargeSpell 1

#InAir
execute @a ~ ~ ~ detect ~ ~-1 ~ air 0 scoreboard players set @p[r=1] InAirPlayer 2
scoreboard players remove @a[score_InAirPlayer_min=1] InAirPlayer 1
execute @a ~ ~ ~ detect ~ ~1 ~ air 0 scoreboard players set @p[r=1] InAirHead 2
scoreboard players remove @a[score_InAirHead_min=1] InAirHead 1
execute @a ~ ~ ~ detect ~ ~ ~ air 0 scoreboard players set @p[r=1] InAirFeet 2
scoreboard players remove @a[score_InAirFeet_min=1] InAirFeet 1

#Team by tag
scoreboard teams join Orange @e[tag=Orange]
scoreboard teams join Blue @e[tag=Blue]

#Life10
scoreboard players set @e[tag=Life10,score_Timer_min=20] Timer -20
scoreboard players set @e[tag=Life5,score_Timer_min=20] Timer -120

#Spawn animation
tp @e[tag=SpawnAnime,score_Timer=10,score_Timer_min=0] ~ ~0.4 ~
execute @e[tag=SpawnAnime,score_Timer=5,score_Timer_min=0] ~ ~ ~ particle largesmoke ~ ~1 ~ 0.2 0.5 0.2 0 3
effect @e[tag=SpawnAnime,score_Timer=2,score_Timer_min=0] resistance 1 100 true

#Drop
scoreboard players add @a[score_Drop_min=1] Drop 1
scoreboard players set @a[score_Drop_min=5] Drop 0
execute @a[score_Drop_min=2,score_Drop=2] ~ ~ ~ playsound block.piston.contract record @p ~ ~ ~ 2 2 1

#Timer
scoreboard players remove @e[score_Timer=-1] Timer 1
scoreboard players add @e[score_Timer_min=0] Timer 1
scoreboard players set @e[score_Timer_min=40] Timer 0
scoreboard players add @e Timer05 1
scoreboard players set @e[score_Timer05_min=10] Timer05 0

#Entity clear
entitydata @e[type=Item] {PickupDelay:99}
kill @e[type=ender_pearl,score_Timer_min=23]
kill @e[x=-5,y=64,z=1,rm=3,type=!Player,score_Timer_min=39,tag=!Permanent]
execute @e[type=Villager,tag=Conquest] ~ ~ ~ kill @e[type=Villager,tag=Conquest,r=3,rm=0]
kill @e[type=Snowball,score_Timer_min=29]
tp @e[type=Chicken] ~ -100 ~
kill @e[type=Xp_Bottle]
kill @e[type=Potion]
kill @e[type=!Player,score_Timer=-200,tag=!Permanent]
kill @e[type=Item,score_Timer_min=10]
execute @a[score_InGame_min=1,m=2] ~ ~ ~ detect 0 ~ 0 bedrock 0 kill @p[r=1]
kill @e[type=Painting]
execute @a[score_InGame=0,m=2] ~ ~ ~ detect 0 ~ 0 bedrock 0 tp @p[r=1] 5000 100 5000
scoreboard players set @e[type=armor_stand,tag=361G,score_Timer_min=0] Timer -1
scoreboard players remove @e[type=armor_stand,tag=361G,score_Timer=-1] Timer 1
kill @e[type=armor_stand,tag=361G,score_Timer=-1500]
kill @e[type=!Player,name=unknown]

#Walk
scoreboard players add @a[score_IsWalking_min=10] IsWalking 100
scoreboard players set @a[score_IsWalking_min=300] IsWalking 0
scoreboard players remove @a[score_IsWalking_min=1] IsWalking 1

#Lobby inventory
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.hotbar.3 air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.hotbar.2 air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.hotbar.1 air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.hotbar.5 air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.hotbar.6 air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.hotbar.7 air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.weapon.offhand air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.armor.chest air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.armor.feet air
replaceitem entity @a[x=5000,y=80,z=5000,rm=19,score_InGame_min=0,score_InGame=0,m=2] slot.armor.legs air

scoreboard players tag @a[x=5000,y=80,z=5000,r=19] add NoMenu
clear @a[tag=NoMenu,score_InGame=-1]
scoreboard players set @a[tag=NoMenu,score_InGame=-1] InGame 0
replaceitem entity @a[score_1_min=1,tag=!NoMenu,score_InGame_min=0,score_InGame=0,score_Class_min=0,score_Class=0,m=2] slot.hotbar.4 stained_hardened_clay 1 14 {display:{Name:"Choose a kit and a team to get ready",Lore:["Choose a kit and a team to get ready"]}}
replaceitem entity @a[score_1_min=1,tag=!NoMenu,score_InGame_min=0,score_InGame=0,team=Spawn,m=2] slot.hotbar.4 stained_hardened_clay 1 14 {display:{Name:"Choose a kit and a team to get ready",Lore:["Choose a kit and a team to get ready"]}}
replaceitem entity @a[score_1_min=1,tag=!NoMenu,score_InGame_min=0,score_InGame=0,score_Class_min=1,team=Orange,m=2] slot.hotbar.4 stained_hardened_clay 1 5 {display:{Name:"You are ready"}}
replaceitem entity @a[score_1_min=1,tag=!NoMenu,score_InGame_min=0,score_InGame=0,score_Class_min=1,team=Blue,m=2] slot.hotbar.4 stained_hardened_clay 1 5 {display:{Name:"You are ready"}}
replaceitem entity @a[score_1_min=1,tag=!NoMenu,score_InGame_min=0,score_InGame=0,score_Class_min=1,team=Random,m=2] slot.hotbar.4 stained_hardened_clay 1 5 {display:{Name:"You are ready"}}
replaceitem entity @a[score_1_min=1,tag=!NoMenu,score_InGame_min=0,score_InGame=0,team=Spec,m=2] slot.hotbar.4 stained_hardened_clay 1 14 {display:{Name:"Choose a kit and a team to get ready",Lore:["Choose a kit and a team to get ready"]}}
replaceitem entity @a[score_1_min=1,tag=!NoMenu,score_InGame=0,score_InGame_min=0,m=2,score_Drop=2] slot.hotbar.0 ender_eye 1 0 {display:{Name:"Select Kit (Drop to select)"},unbreakable:1}
scoreboard players set @a[score_InGame=0,score_InGame_min=0,score_Drop_min=2,score_Drop=2] InGame -6 {SelectedItemSlot:0}
replaceitem entity @a[tag=!NoMenu,score_1_min=1,score_InGame=0,score_InGame_min=0,m=2,score_Drop=2] slot.hotbar.8 paper 1 0 {display:{Name:"Scores (Drop to display)"},unbreakable:1}
scoreboard players tag @a[score_InGame=0,score_InGame_min=0,score_Drop_min=3,score_Drop=3] add DispScores {SelectedItemSlot:8}
execute @a[tag=DispScores] ~ ~ ~ tellraw @p ["",{"text":"SCORES:","color":"aqua","bold":true},{"text":"\n - Global:","color":"aqua","bold":false},{"text":"\n      Games played: ","color":"gray"},{"score":{"name":"@p","objective":"GameNumber"},"color":"gray"},{"text":"\n      Games lost: ","color":"red"},{"score":{"name":"@p","objective":"LoseNumber"},"color":"red"},{"text":"\n      Games won: ","color":"green"},{"score":{"name":"@p","objective":"WinNumber"},"color":"green"},{"text":"\n - Last Game:","color":"aqua"},{"text":"\n      Kills: ","color":"green"},{"score":{"name":"@p","objective":"KillNumber"},"color":"green"},{"text":"\n      Deaths: ","color":"red"},{"score":{"name":"@p","objective":"DeathNumber"},"color":"red"},{"text":"\n      Earned coins: ","color":"gold"},{"score":{"name":"@p","objective":"CoinsNumber"},"color":"gold"},{"text":"\nNOTE: Scores are reset when the map is reset.","color":"aqua"}]
scoreboard players tag @a remove DispScores
scoreboard players tag @a remove NoMenu

clear @a[x=5000,y=80,z=5000,r=19,m=!1] ender_eye
clear @a[x=5000,y=80,z=5000,r=19,m=!1] minecraft:paper
clear @a[x=5000,y=80,z=5000,r=19,m=!1] minecraft:stained_hardened_clay
clear @a[x=5000,y=80,z=5000,r=19,score_InGame=-1,score_InGame_min=-4,m=!1]
scoreboard players set @a[x=5000,y=80,z=5000,r=19,score_InGame=-1,score_InGame_min=-4,m=!1] InGame 0

#Sneak charge 0 -> 100
scoreboard players remove @a[score_Sneak_min=1] Sneak 1
scoreboard players set @a[score_Sneak_min=102] Sneak 101

#Mana
scoreboard players set @a[score_InGame=0] Mana 0
scoreboard players add @a[score_InGame_min=1,score_Timer_min=1,score_Timer=1,score_Mana=299] Mana 1
scoreboard players add @a[score_InGame_min=1,score_Timer_min=21,score_Timer=21,score_Mana=299] Mana 1
scoreboard players add @a[score_InGame_min=1,score_Timer_min=11,score_Timer=11,score_Mana=299,score_EffMana_min=1] Mana 1
scoreboard players add @a[score_InGame_min=1,score_Timer_min=31,score_Timer=31,score_Mana=299,score_EffMana_min=1] Mana 1

#Join current game
scoreboard players set @a[tag=Join] InGame 1
tp @a[tag=Join] @r[score_InGame_min=1]
scoreboard players set @a[tag=Join] LifeState 0
scoreboard players tag * remove Join

#Op message
tellraw @a[m=1,tag=!OP] ["",{"text":"<","color":"white","bold":true},{"text":"Gunivers","color":"gold","bold":false},{"text":">","color":"white","bold":true},{"text":" Oh! You are an operator! You can access to the panel by ","color":"white","bold":false},{"text":"clicking here","color":"aqua","clickEvent":{"action":"run_command","value":"/tp @p 5000 200 5000"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here to be teleported to the panel"}]}},"bold":false}]
execute @a[m=1,tag=!OP] ~ ~ ~ playsound minecraft:block.note.hat record @p
scoreboard players tag @a[m=1] add OP
scoreboard players tag @a[m=!1] remove OP

#Cooldown display
scoreboard players set @a Cooldown 0
scoreboard players set @a[score_InGame_min=1,score_Spell1_min=1] Cooldown -1 {SelectedItemSlot:1}
scoreboard players set @a[score_InGame_min=1,score_Spell2_min=1] Cooldown -2 {SelectedItemSlot:2}
scoreboard players set @a[score_InGame_min=1,score_Spell3_min=1] Cooldown -3 {SelectedItemSlot:3}
scoreboard players set @a[score_InGame_min=1,score_Class_min=32,score_Class=32,score_Spell3_min=1] Cooldown -3 {SelectedItemSlot:3}
scoreboard players tag @a remove CustomCd
scoreboard players tag @a[score_Class_min=32,score_Class=32,score_Cooldown_min=-3,score_Cooldown=-3] add CustomCd
execute @a[score_Cooldown_min=-1,score_Cooldown=-1] ~ ~ ~ scoreboard players operation @p Cooldown = @p Spell1
execute @a[score_Cooldown_min=-2,score_Cooldown=-2] ~ ~ ~ scoreboard players operation @p Cooldown = @p Spell2
execute @a[score_Cooldown_min=-3,score_Cooldown=-3] ~ ~ ~ scoreboard players operation @p Cooldown = @p Spell3
scoreboard players add @a[score_Cooldown_min=1] Cooldown 20
execute @a[score_Cooldown_min=1] ~ ~ ~ scoreboard players operation @p Cooldown /= 20 Constant
execute @a[score_Class_min=32,score_Class=32,tag=CustomCd] ~ ~ ~ scoreboard players operation @s Cooldown %= 7 Constant
scoreboard players set @a[score_Class_min=32,score_Class=32,tag=CustomCd,score_Spell3_min=1,score_Cooldown=0] Cooldown 7

#Player info
execute @a[score_InGame_min=1,score_Cooldown=0,score_health_min=20,m=2] ~ ~ ~ title @s actionbar ["",{"score":{"name":"@p","objective":"health"},"color":"dark_red","bold":true},{"text":"❤   ","color":"dark_red","bold":false},{"score":{"name":"@p","objective":"Mana"},"color":"dark_blue","bold":true},{"text":"✸   ","color":"dark_blue","bold":false},{"score":{"name":"@p","objective":"Saturation"},"color":"green","bold":true},{"text":"➠   ","color":"green","bold":false},{"score":{"name":"@p","objective":"Coins"},"color":"gold","bold":true},{"text":"✪","color":"gold","bold":false}]
execute @a[score_InGame_min=1,score_Cooldown_min=1,score_health_min=20,m=2] ~ ~ ~ title @s actionbar ["",{"score":{"name":"@p","objective":"health"},"color":"dark_red","bold":true},{"text":"❤   ","color":"dark_red","bold":false},{"score":{"name":"@p","objective":"Mana"},"color":"dark_blue","bold":true},{"text":"✸   ","color":"dark_blue","bold":false},{"score":{"name":"@p","objective":"Saturation"},"color":"green","bold":true},{"text":"➠   ","color":"green","bold":false},{"score":{"name":"@p","objective":"Coins"},"color":"gold","bold":true},{"text":"✪   ","color":"gold","bold":false},{"score":{"name":"@p","objective":"Cooldown"},"color":"gray","bold":true},{"text":"s","color":"gray","bold":false}]
execute @a[score_InGame_min=1,score_Cooldown=0,score_health=19,m=2] ~ ~ ~ title @s actionbar ["",{"score":{"name":"@p","objective":"health"},"color":"dark_red","bold":true,"underlined":true},{"text":"❤","color":"dark_red","bold":false,"underlined":true},{"text":"   "},{"score":{"name":"@p","objective":"Mana"},"color":"dark_blue","bold":true},{"text":"✸   ","color":"dark_blue","bold":false},{"score":{"name":"@p","objective":"Saturation"},"color":"green","bold":true},{"text":"➠   ","color":"green","bold":false},{"score":{"name":"@p","objective":"Coins"},"color":"gold","bold":true},{"text":"✪","color":"gold","bold":false}]
execute @a[score_InGame_min=1,score_Cooldown_min=1,score_health=19,m=2] ~ ~ ~ title @s actionbar ["",{"score":{"name":"@p","objective":"health"},"color":"dark_red","bold":true,"underlined":true},{"text":"❤","color":"dark_red","bold":false,"underlined":true},{"text":"   "},{"score":{"name":"@p","objective":"Mana"},"color":"dark_blue","bold":true},{"text":"✸   ","color":"dark_blue","bold":false},{"score":{"name":"@p","objective":"Saturation"},"color":"green","bold":true},{"text":"➠   ","color":"green","bold":false},{"score":{"name":"@p","objective":"Coins"},"color":"gold","bold":true},{"text":"✪   ","color":"gold","bold":false},{"score":{"name":"@p","objective":"Cooldown"},"color":"gray","bold":true},{"text":"s","color":"gray","bold":false}]