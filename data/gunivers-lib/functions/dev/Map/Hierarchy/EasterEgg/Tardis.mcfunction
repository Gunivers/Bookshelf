#Detection of players in the Tardis
scoreboard players tag @a remove InTardis
scoreboard players tag @a[x=-20,y=30,z=-20,dx=45,dy=25,dz=45] add InTardis

#Tardis Lights and Location Check
scoreboard players set @a[tag=InTardis] LocationCheck 0
scoreboard players set @e[type=villager,name=Blue] Tmp 0
execute @a[tag=InTardis] ~ ~ ~ scoreboard players set @e[type=villager,name=Blue] Tmp 1
execute @e[type=villager,name=Blue,score_Tmp=0] ~ ~ ~ fill 3 46 4 3 46 4 redstone_block 0 replace stone
execute @e[type=villager,name=Blue,score_Tmp_min=1] ~ ~ ~ fill 3 46 4 3 46 4 stone 0 replace redstone_block

#Tardis Enter
execute @a[x=0,y=45,z=7,r=8] ~ ~ ~ detect ~ ~-2 ~ coal_block 0 playsound minecraft:block.iron_door.open ambient @s
execute @a[x=0,y=39,z=7,r=5] ~ ~ ~ detect ~ ~-2 ~ coal_block 0 tp @s ~ ~9 ~
execute @a[x=0,y=48,z=7,r=5] ~ ~ ~ detect ~ ~-2 ~ coal_block 0 tp @s ~ ~-9 ~