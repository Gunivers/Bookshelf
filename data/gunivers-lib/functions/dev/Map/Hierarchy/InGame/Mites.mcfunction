execute @e[type=Villager,name=Blue,score_Timer_min=1,score_Timer=1] ~ ~ ~ /execute @r[x=2000,y=100,z=2000,rm=100,tag=IsPlaying] ~ ~ ~ /summon endermite ~ 50 ~ {Tags:["Permanent","Mob"],Attributes:[{Name:generic.followRange,Base:0}]}
execute @e[type=Villager,name=Blue,score_Timer_min=21,score_Timer=21] ~ ~ ~ /execute @r[x=2000,y=100,z=2000,rm=100,tag=IsPlaying] ~ ~ ~ /summon endermite ~ 50 ~ {Tags:["Permanent","Mob"],Attributes:[{Name:generic.followRange,Base:0}]}
execute @e[type=Endermite,tag=Mob,score_Timer_min=0] ~ ~ ~ /spreadplayers ~ ~ 10 50 false @s
scoreboard players set @e[type=Endermite,tag=Mob,score_Timer_min=0] Timer -1
tp @e[type=endermite,tag=Mob,score_Timer=-400] ~ ~-1000 ~
kill @e[type=endermite,tag=Mob,score_Timer=-400]
execute @a[x=2000,y=100,z=2000,rm=100,score_InGame_min=1] ~ ~ ~ /scoreboard players tag @e[type=Endermite,tag=Mob,r=1] add MiteKilled
execute @e[type=Endermite,tag=MiteKilled] ~ ~ ~ /summon Item ~ ~ ~ {Item:{id:"gold_ingot",Damage:0,Count:1},Motion:[0.0,0.4,0.0],PickupDelay:999999,Tags:["CoinsEarned"]}
execute @e[type=Endermite,tag=MiteKilled] ~ ~ ~ /scoreboard players add @p[tag=IsPlaying] Coins 5
execute @e[type=Item,tag=CoinsEarned,score_Timer=9,score_Timer_min=9] ~ ~ ~ /playsound entity.player.levelup record @a[r=5] ~ ~ ~ 1 2 1
execute @e[type=Endermite,tag=MiteKilled] ~ ~ ~ /playsound block.grass.break record @a[r=5] ~ ~ ~ 2 2 1
execute @e[type=Item,tag=CoinsEarned] ~ ~ ~ /particle happyVillager ~ ~ ~ 0.2 0.2 0.2 0 1
execute @e[type=Endermite,tag=MiteKilled] ~ ~ ~ /particle blockcrack ~ ~0.1 ~ 0.2 0.2 0.2 1 20 force @a 199
kill @e[type=Endermite,tag=MiteKilled]
effect @e[type=Endermite,tag=Mob] weakness 1 127 true
effect @e[type=Endermite,tag=Mob] resistance 1 127 true
