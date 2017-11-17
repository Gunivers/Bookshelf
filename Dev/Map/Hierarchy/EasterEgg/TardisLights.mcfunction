#Tardis lights
scoreboard players set @e[type=villager,name=Blue] Tmp 0
execute @p[x=0,y=42,z=-4,r=10] ~ ~ ~ scoreboard players set @e[type=villager,name=Blue] Tmp 1

execute @e[type=villager,name=Blue,score_Tmp=0] ~ ~ ~ fill 3 46 4 3 46 4 stone 0 replace redstone_block
execute @e[type=villager,name=Blue,score_Tmp_min=1] ~ ~ ~ fill 3 46 4 3 46 4 redstone_block 0 replace stone