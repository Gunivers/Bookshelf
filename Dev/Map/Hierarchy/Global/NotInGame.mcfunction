blockdata 4990 101 4998 {Text1:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger Action set 30\"},\"text\":\"---------------\",\"color\":\"dark_purple\"}]",Text2:"[{\"text\":\"Training\",\"color\":\"dark_purple\"}]",Text3:"[{\"text\":\"Room\",\"color\":\"dark_purple\"}]",Text4:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1\"},\"text\":\"---------------\",\"color\":\"dark_purple\"}]"}
scoreboard players set @a[x=2000,y=100,z=2000,rm=100,score_InGame_min=1] InGame 0
scoreboard players add @a[x=2000,y=100,z=2000,r=100,score_Mana=299,score_InGame_min=1] Mana 1
scoreboard players set @a[x=2000,y=100,z=2000,r=50,score_InGame_min=0,score_Class_min=1] InGame 1
scoreboard teams join Blue @a[x=2000,y=100,z=2000,r=50,m=2,team=Spec]
scoreboard teams join Blue @a[x=2000,y=100,z=2000,r=50,m=2,team=Spawn]
scoreboard teams join Blue @a[x=2000,y=100,z=2000,r=50,m=2,team=Random]
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_Class_min=0,score_Class=0,score_InGame_min=1,m=2] slot.weapon air 1 0
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_Class_min=0,score_Class=0,score_InGame_min=1,m=2] slot.weapon.offhand air 1 0
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_Class_min=0,score_Class=0,score_InGame_min=1,m=2] slot.armor.feet air 1 0
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_Class_min=0,score_Class=0,score_InGame_min=1,m=2] slot.armor.legs air 1 0
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_Class_min=0,score_Class=0,score_InGame_min=1,m=2] slot.armor.chest air 1 0
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_InGame_min=1,m=2] slot.hotbar.8 air
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_InGame_min=1,m=2] slot.hotbar.5 air
replaceitem entity @a[x=2000,y=100,x=2000,r=50,score_InGame_min=1,m=2] slot.hotbar.4 air
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_InGame_min=1,m=2] slot.hotbar.6 air
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_InGame_min=1,m=2] slot.hotbar.7 air
replaceitem entity @a[x=2000,y=100,z=2000,r=50,score_InGame_min=1,m=2] slot.hotbar.4 air
effect @a[x=2000,y=100,z=2000,r=50,score_InGame_min=1,m=2] regeneration 1 127 true
spawnpoint @a 5000 100 5000
execute @e[type=Villager,c=1,score_Timer_min=1,score_Timer=1] ~ ~ ~ scoreboard players reset Orange Info
scoreboard players reset Blue Info
scoreboard players set PlayersInOrange: Info 0
scoreboard players set PlayersInBlue: Info 0
scoreboard players set PlayersInRandom: Info 0
scoreboard players operation PlayersInRandom: Info += @a[team=Random,score_Class_min=1,score_InGame_min=0] 1
scoreboard players operation PlayersInOrange: Info += @a[team=Orange,score_Class_min=1,score_InGame_min=0] 1
scoreboard players operation PlayersInBlue: Info += @a[team=Blue,score_Class_min=1,score_InGame_min=0] 1
execute @e[type=Villager,name=Blue,score_Timer_min=2,score_Timer=2] ~ ~ ~ /title @a[score_InGame=0] times 0 5 10
scoreboard players set ------ Info -1


#Options (13 = true, 14 = false)

#Event mode
execute @r ~ ~ ~ detect 0 70 0 stained_glass 14 blockdata 4991 101 5000 {Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"Team missing\"}",Text3:"{\"text\":\" \"}",Text4:"{\"text\":\" \"}"}
execute @r ~ ~ ~ detect 0 70 0 stained_glass 14 execute @r[team=Blue,score_Class_min=1] ~ ~ ~ /execute @r[team=Orange,score_Class_min=1] ~ ~ ~ /blockdata 4991 101 5000 {Text1:"{\"text\":\"------------------\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger Action set 20\"}}",Text2:"{\"text\":\"Start Game\",\"bold\":true}",Text4:"{\"text\":\"------------------\"}"}
execute @r ~ ~ ~ detect 0 70 0 stained_glass 14 execute @r[team=Random,score_Class_min=1] ~ ~ ~ /execute @r[rm=1,team=Random,score_Class_min=1] ~ ~ ~ /blockdata 4991 101 5000 {Text1:"{\"text\":\"------------------\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger Action set 20\"}}",Text2:"{\"text\":\"Start Game\",\"bold\":true}",Text4:"{\"text\":\"------------------\"}"}
execute @r ~ ~ ~ detect 0 70 0 stained_glass 14 blockdata 5002 101 5009 {Text1:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players add @e[type=Villager,name=Orange] Class 1\"},\"text\":\"---------------\"}]",Text2:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/playsound minecraft:block.stone_button.click_on record @a ~ ~ ~\"},\"text\":\"Change Map\"}]",Text3:"[{\"text\":\"\"}]",Text4:"[{\"text\":\"---------------\"}]"}
execute @r ~ ~ ~ detect 0 70 0 stained_glass 14 blockdata 4998 101 5009 {Text1:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players add @e[type=Villager,name=Blue] Class 1\"},\"text\":\"---------------\"}]",Text2:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/playsound minecraft:block.stone_button.click_on record @a ~ ~ ~\"},\"text\":\"Change Mode\"}]",Text3:"[{\"text\":\"\"}]",Text4:"[{\"text\":\"---------------\"}]"}

execute @r ~ ~ ~ detect 0 70 0 stained_glass 13 blockdata 5002 101 5009 {Text1:"[{\"text\":\"---------------\"}]",Text2:"[{\"text\":\"This sign\"}]",Text3:"[{\"text\":\"was disabled\"}]",Text4:"[{\"text\":\"---------------\"}]"}
execute @r ~ ~ ~ detect 0 70 0 stained_glass 13 blockdata 4998 101 5009 {Text1:"[{\"text\":\"---------------\"}]",Text2:"[{\"text\":\"This sign\"}]",Text3:"[{\"text\":\"was disabled\"}]",Text4:"[{\"text\":\"---------------\"}]"}
execute @r ~ ~ ~ detect 0 70 0 stained_glass 13 blockdata 4991 101 5000 {Text1:"[{\"text\":\"---------------\"}]",Text2:"[{\"text\":\"This sign\"}]",Text3:"[{\"text\":\"was disabled\"}]",Text4:"[{\"text\":\"---------------\"}]"}

#Teams selection
execute @r ~ ~ ~ detect 0 76 0 stained_glass 13 blockdata 4990 101 5002 {Text1:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger Action set 25\"},\"text\":\"---------------\"}]",Text2:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/playsound minecraft:block.stone_button.click_on record @a ~ ~ ~\"},\"text\":\"Spectate\"}]",Text3:"[{\"text\":\"\"}]",Text4:"[{\"text\":\"---------------\"}]"}

execute @r ~ ~ ~ detect 0 76 0 stained_glass 14 blockdata 4990 101 5002 {Text1:"[{\"text\":\"---------------\"}]",Text2:"[{\"text\":\"This sign\"}]",Text3:"[{\"text\":\"was disabled\"}]",Text4:"[{\"text\":\"---------------\"}]"}

#Kit selection
execute @r ~ ~ ~ detect 0 75 0 stained_glass 13 blockdata 5000 101 5009 {Text1:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p InGame -6 1\"},\"text\":\"---------------\"}]",Text2:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/playsound minecraft:block.stone_button.click_on record @a ~ ~ ~\"},\"text\":\"Select kit\"}]",Text3:"[{\"text\":\"\"}]",Text4:"[{\"text\":\"---------------\"}]"}

execute @r ~ ~ ~ detect 0 75 0 stained_glass 14 blockdata 5000 101 5009 {Text1:"[{\"text\":\"---------------\"}]",Text2:"[{\"text\":\"This sign\"}]",Text3:"[{\"text\":\"was disabled\"}]",Text4:"[{\"text\":\"---------------\"}]"}

