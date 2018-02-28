execute @e[type=Item,score_Menu_min=1,score_Timer_min=1,score_Timer=1] ~ ~ ~ execute @p[score_Drop_min=2,m=2,score_InGame_min=1] ~ ~ ~ particle happyVillager ~ ~1 ~ 0.3 0.5 0.3 1 30
execute @e[type=Item,score_Menu_min=1,score_Timer_min=1,score_Timer=1] ~ ~ ~ execute @p[score_Drop_min=2,m=2,score_InGame_min=1] ~ ~ ~ playsound entity.zombie.infect record @a[r=30] ~ ~ ~ 2 1 1

scoreboard players set @e[type=Item] Menu 1 {Item:{tag:{display:{Name:"Potion of Regeneration"}}}}
execute @e[type=Item,score_Menu_min=1,score_Menu=1,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffRegen=200] EffRegen 100
scoreboard players set @e[type=Item] Menu 2 {Item:{tag:{display:{Name:"Potion of Speed"}}}}
execute @e[type=Item,score_Menu_min=2,score_Menu=2,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffSpeed=200] EffSpeed 200
execute @e[type=Item,score_Menu_min=2,score_Menu=2,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffJump=200] EffJump 200
scoreboard players set @e[type=Item] Menu 3 {Item:{tag:{display:{Name:"Potion of Resistance"}}}}
execute @e[type=Item,score_Menu_min=3,score_Menu=3,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffResistance=200] EffResistance 200
scoreboard players set @e[type=Item] Menu 4 {Item:{tag:{display:{Name:"Potion of Mana"}}}}
execute @e[type=Item,score_Menu_min=4,score_Menu=4,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffMana=200] EffMana 200
scoreboard players set @e[type=Item] Menu 5 {Item:{tag:{display:{Name:"Potion of Power"}}}}
execute @e[type=Item,score_Menu_min=5,score_Menu=5,score_Timer_min=1,score_Timer=1] ~ ~ ~ effect @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1] strength 5 0 true
scoreboard players set @e[type=Item] Menu 6 {Item:{tag:{display:{Name:"Potion of Invisibility"}}}}
execute @e[type=Item,score_Menu_min=6,score_Menu=6,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffInvisibility=60] EffInvisibility 100
scoreboard players set @e[type=Item] Menu 7 {Item:{tag:{display:{Name:"Potion of Invulnerability"}}}}
execute @e[type=Item,score_Menu_min=7,score_Menu=7,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffInvulnerable=20] EffInvulnerable 100
scoreboard players set @e[type=Item] Menu 8 {Item:{tag:{display:{Name:"Potion of Heal"}}}}
execute @e[type=Item,score_Menu_min=8,score_Menu=8,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffHeal=20] EffHeal 1002
scoreboard players set @e[type=Item] Menu 9 {Item:{tag:{display:{Name:"Legendary Potion"}}}}
execute @e[type=Item,score_Menu_min=9,score_Menu=9,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffRegen=200] EffRegen 100
execute @e[type=Item,score_Menu_min=9,score_Menu=9,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffSpeed=200] EffSpeed 200
execute @e[type=Item,score_Menu_min=9,score_Menu=9,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffJump=200] EffJump 200
execute @e[type=Item,score_Menu_min=9,score_Menu=9,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffResistance=200] EffResistance 200
execute @e[type=Item,score_Menu_min=9,score_Menu=9,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffMana=200] EffMana 200
scoreboard players set @e[type=Item] Menu 10 {Item:{tag:{display:{Name:"Divin Potion"}}}}
execute @e[type=Item,score_Menu_min=10,score_Menu=10,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffInvulnerable=20] EffInvulnerable 100
execute @e[type=Item,score_Menu_min=10,score_Menu=10,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffHeal=20] EffHeal 1002
scoreboard players set @e[type=Item] Menu 11 {Item:{tag:{display:{Name:"Darkness Potion"}}}}
execute @e[type=Item,score_Menu_min=11,score_Menu=11,score_Timer_min=1,score_Timer=1] ~ ~ ~ effect @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1] strength 5 0 true
execute @e[type=Item,score_Menu_min=11,score_Menu=11,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffInvisibility=60] EffInvisibility 100
scoreboard players set @e[type=Item] Menu 12 {Item:{tag:{display:{Name:"Ultimate Potion"}}}}
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffRegen=200] EffRegen 100
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffSpeed=200] EffSpeed 200
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffJump=200] EffJump 200
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffResistance=200] EffResistance 200
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffMana=200] EffMana 200
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffInvulnerable=20] EffInvulnerable 100
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffHeal=20] EffHeal 1002
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ effect @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1] strength 5 0 true
execute @e[type=Item,score_Menu_min=12,score_Menu=12,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players set @p[score_Drop_min=3,score_Drop=3,m=2,score_InGame_min=1,score_EffInvisibility=60] EffInvisibility 100