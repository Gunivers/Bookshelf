execute @r ~ ~ ~ detect 2855 111 2951 air -1 setblock 2855 111 2951 minecraft:end_gateway 0
execute @r ~ ~ ~ detect 3145 111 3049 air -1 setblock 3145 111 3049 minecraft:end_gateway 0
scoreboard players tag @a remove HaveObjective
execute @e[type=Villager,tag=BlueRightInib,score_HaveObjective_min=-999] ~ ~ ~ execute @e[type=Villager,tag=BlueLeftInib,score_HaveObjective_min=-999] ~ ~ ~ scoreboard players tag @a[team=Orange] add InibStand
execute @e[type=Villager,tag=OrangeRightInib,score_HaveObjective_min=-999] ~ ~ ~ execute @e[type=Villager,tag=OrangeLeftInib,score_HaveObjective_min=-999] ~ ~ ~ scoreboard players tag @a[team=Blue] add InibStand
scoreboard players tag @a[x=3145,y=110,z=3049,r=1,tag=!InibStand,team=Orange,score_InGame_min=1,m=2] add HaveObjective
scoreboard players tag @a[x=2855,y=110,z=2951,r=1,tag=!InibStand,team=Blue,score_InGame_min=1,m=2] add HaveObjective
effect @a[tag=HaveObjective] resistance 1 100 true
execute @a[tag=HaveObjective] ~ ~ ~ summon Fireworks_Rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[0],FadeColors:[0]}]}}}}
tp @a[tag=HaveObjective,team=Orange] 2892 99 2999
tp @a[tag=HaveObjective,team=Blue] 3108 99 3001
execute @a[tag=HaveObjective,team=Blue] ~ ~ ~ scoreboard players remove @e[type=Villager,name=Orange] Score 10
execute @a[tag=HaveObjective,team=Blue] ~ ~ ~ scoreboard players add @e[type=Villager,name=Blue] Score 10
execute @a[tag=HaveObjective,team=Orange] ~ ~ ~ scoreboard players remove @e[type=Villager,name=Blue] Score 10
execute @a[tag=HaveObjective,team=Orange] ~ ~ ~ scoreboard players add @e[type=Villager,name=Orange] Score 10
execute @a[tag=HaveObjective,team=Blue] ~ ~ ~ scoreboard players add @e[type=Villager,tag=OrangeInib,score_HaveObjective=-1000] HaveObjective 15
execute @a[tag=HaveObjective,team=Orange] ~ ~ ~ scoreboard players add @e[type=Villager,tag=BlueInib,score_HaveObjective=-1000] HaveObjective 15
scoreboard players tag @a remove InibStand
execute @a[tag=HaveObjective] ~ ~ ~ summon Fireworks_Rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[0],FadeColors:[0]}]}}}}
execute @a[tag=HaveObjective,team=Blue] ~ ~ ~ tellraw @a ["",{"text":"\n>> ","color":"aqua","bold":true},{"selector":"@p","color":"blue","bold":true},{"text":" jumped into the Orange bulk !\n","color":"aqua","bold":true}]
execute @a[tag=HaveObjective,team=Orange] ~ ~ ~ tellraw @a ["",{"text":"\n>> ","color":"gold","bold":true},{"selector":"@p","color":"gold","bold":true},{"text":" jumped into the Blue bulk !\n","color":"gold","bold":true}]