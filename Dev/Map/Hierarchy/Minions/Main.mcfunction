#Compte le nombre de minions par team
scoreboard players set @e[type=Villager,name=Orange] Tmp 0
scoreboard players set @e[type=Villager,name=Blue] Tmp 0
execute @e[tag=Minion,team=Blue] ~ ~ ~ scoreboard players add @e[type=Villager,name=Blue] Tmp 1
execute @e[tag=Minion,team=Orange] ~ ~ ~ scoreboard players add @e[type=Villager,name=Orange] Tmp 1

#Regarde si il y a des minions a kill ou a summon
execute @e[type=Villager,name=Blue,score_Tmp=10] ~ ~ ~ function Gunivers-Lib:Dev/Map/Hierarchy/Minions/LimitByPlayers
execute @e[type=Villager,name=Orange,score_Tmp=10] ~ ~ ~ function Gunivers-Lib:Dev/Map/Hierarchy/Minions/LimitByPlayers

scoreboard players set @e[type=Villager,tag=Data,score_Tmp_min=11] Tmp2 10
execute @e[type=Villager,tag=Data,score_Tmp_min=11] ~ ~ ~ scoreboard players operation @s Tmp2 -= @s Tmp

#Kill des minions si il y en a trop et summon si pas assez
execute @e[type=Villager,name=Blue,score_Tmp2=-1] ~ ~ ~ kill @r[type=zombie,tag=Minion,team=Blue]
execute @e[type=Villager,name=Orange,score_Tmp2=-1] ~ ~ ~ kill @r[type=zombie,tag=Minion,team=Orange]

execute @e[type=Villager,name=Blue,score_Tmp2_min=1] ~ ~ ~ execute @r[type=player,team=Blue,score_InGame_min=1,m=2] ~ ~ ~ summon Zombie ~ ~ ~ {Tags:["InitMinion","Minion","Blue"],IsBaby:1,ArmorItems:[{id:leather_boots,Count:1b,tag:{display:{color:884479}}},{id:leather_leggings,Count:1b,tag:{display:{color:884479}}},{id:leather_chestplate,Count:1b,tag:{display:{color:884479}}},{id:skull,Damage:2,Count:1b}],HandItems:[{id:iron_sword,Count:1b},{}],AttributeModifiers:[{AttributeName:"generic.followRange",Name:"generic.followRange",Amount:15}]}
execute @e[type=Villager,name=Orange,score_Tmp2_min=1] ~ ~ ~ execute @r[type=player,team=Orange,score_InGame_min=1,m=2] ~ ~ ~ summon Zombie ~ ~ ~ {Tags:["InitMinion","Minion","Orange"],IsBaby:1,ArmorItems:[{id:leather_boots,Count:1b,tag:{display:{color:16711680}}},{id:leather_leggings,Count:1b,tag:{display:{color:16711680}}},{id:leather_chestplate,Count:1b,tag:{display:{color:16711680}}},{id:skull,Damage:2,Count:1b}],HandItems:[{id:iron_sword,Count:1b},{}],AttributeModifiers:[{AttributeName:"generic.followRange",Name:"generic.followRange",Amount:15}]}
execute @e[tag=InitMinion] ~ ~ ~ spreadplayers ~ ~ 2 10 false @s
scoreboard players tag @e remove InitMinion