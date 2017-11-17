execute @s[score_TouchBy=-1] ~ ~ ~ /scoreboard players operation @s TouchBy *= Neg Constant
scoreboard players operation @a Class -= @s TouchBy

execute @s[team=Orange] ~ ~ ~ /tellraw @a ["",{"text":">> ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" was killed by ","color":"red","bold":false},{"selector":"@p[score_Class_min=0,score_Class=0,team=Blue]","color":"none","bold":false}]
execute @s[team=Blue] ~ ~ ~ /tellraw @a ["",{"text":">> ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" was killed by ","color":"red","bold":false},{"selector":"@p[score_Class_min=0,score_Class=0,team=Orange]","color":"none","bold":false}]
execute @s[team=Orange] ~ ~ ~ /scoreboard players add @p[score_Class_min=0,score_Class=0,team=Blue,score_InGame_min=1,x=2000,y=100,z=2000,rm=100] KillNumber 1
execute @s[team=Blue] ~ ~ ~ /scoreboard players add @p[score_Class_min=0,score_Class=0,team=Orange,score_InGame_min=1,x=2000,y=100,z=2000,rm=100] KillNumber 1

execute @s ~ ~ ~ /scoreboard players operation @a Class += @s TouchBy

scoreboard players add @a[x=2000y=100,z=2000,rm=100] DeathNumber 1

execute @s[team=Blue] ~ ~ ~ execute @a[team=Orange] ~ ~ ~ playsound entity.wither.spawn record @p ~ ~ ~
execute @s[team=Orange] ~ ~ ~ execute @a[team=Blue] ~ ~ ~ playsound entity.wither.spawn record @p ~ ~ ~
execute @s[team=Blue] ~ ~ ~ execute @a[team=Blue] ~ ~ ~ playsound entity.irongolem.death record @p ~ ~ ~
execute @s[team=Orange] ~ ~ ~ execute @a[team=Orange] ~ ~ ~ playsound entity.irongolem.death record @p ~ ~ ~

execute @s ~ ~ ~ /scoreboard players set @a[r=5,score_EffInvulnerable=2] EffInvulnerable 2
execute @s[team=Blue] ~ ~ ~ /summon fireworks_rocket ~ ~1 ~ {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[I;3177727],FadeColors:[I;3177727]}]}}}}
execute @s[team=Orange] ~ ~ ~ /summon fireworks_rocket ~ ~1 ~ {FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[I;16748060],FadeColors:[I;16748060]}]}}}}

gamemode 3 @s[x=2000,y=100,z=2000,rm=200]


scoreboard players set @s IsDead 0