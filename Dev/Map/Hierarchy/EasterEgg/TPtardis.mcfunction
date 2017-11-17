#Easter egg TP Tardis
scoreboard players set @e[type=villager,name=Blue] Tmp 0
execute @e[type=villager,name=Blue] ~ ~ ~ detect 5005 95 5002 lever 14 scoreboard players set @s Tmp 1

playsound entity.endermen.teleport ambient @a[r=5]
execute @e[type=villager,name=Blue,score_Tmp=0] ~ ~ ~ execute @a[x=4997,y=94,z=5007,r=2] ~ ~ ~ detect ~ ~-1 ~ iron_block 0 tp @s 0 48.2 9 