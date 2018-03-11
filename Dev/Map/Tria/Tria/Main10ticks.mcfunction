#Main function
#Called every 10 tick (by Tria:Main)

#Source entity is the armor_stand with tag Data

# ---- Global Systems -------------------------------------------------------------------------------------

#Join Game System
#First Connection
execute @a[tag=!Spawn] ~ ~ ~ tellraw @a[tag=FRA] {"text":">>","color":"gold","bold":"true","extra":[{"text":" Bienvenu sur ","color":"gray","bold":"false"},{"text":"Tria","color":"white"},{"text":", ","color":"gray","bold":"false"},{"selector":"@p","color":"white"},{"text":" <<","color":"gold"}]}
execute @a[tag=!Spawn] ~ ~ ~ tellraw @a[tag=ENG] {"text":">>","color":"gold","bold":"true","extra":[{"text":" Welcome on ","color":"gray","bold":"false"},{"text":"Tria","color":"white"},{"text":", ","color":"gray","bold":"false"},{"selector":"@p","color":"white"},{"text":" <<","color":"gold"}]}
spawnpoint @a[tag=!Spawn] 1000 100 1000
execute @a[tag=!Spawn] ~ ~ ~ summon fireworks_rocket 1000 105 1000 {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16755200],FadeColors:[I;16777215]}]}}}}
scoreboard players set @a[tag=!Spawn] Join 1
scoreboard players tag @a add Spawn
#Other Connections (Join is a stat.leaveGame)
#Id is the identifier of the player (0 if the player is in the lobby)
scoreboard players add @e Id 0
tp @a[score_Id=0,score_Id_min=0,score_Join_min=1] 1000 100 1000
gamemode 2 @a[score_Id=0,score_Id_min=0,score_Join_min=1]
title @a[score_Join_min=1] times 0 3 0
scoreboard players set @a Join 0