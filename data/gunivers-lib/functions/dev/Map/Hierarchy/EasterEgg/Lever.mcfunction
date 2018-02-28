#Easter egg lever
scoreboard players set @e[type=villager,name=Blue] Tmp 0
execute @e[type=villager,name=Blue] ~ ~ ~ detect 5005 95 5002 lever 14 scoreboard players set @s Tmp 1

execute @e[type=villager,name=Blue,score_Tmp=0] ~ ~ ~ fill 4997 93 5007 4997 93 5007 stone 0 replace redstone_torch
execute @e[type=villager,name=Blue,score_Tmp_min=1] ~ ~ ~ fill 4997 93 5007 4997 93 5007 redstone_torch 1 replace stone

