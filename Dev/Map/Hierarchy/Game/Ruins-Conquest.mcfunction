execute @r ~ ~ ~ detect 5906 107 6000 air -1 setblock 5906 107 6000 minecraft:end_gateway 0
execute @r ~ ~ ~ detect 6094 107 6000 air -1 setblock 6094 107 6000 minecraft:end_gateway 0
scoreboard players tag @a remove HaveObjective
execute @e[type=Villager,tag=BlueMiddleInib,score_HaveObjective_min=-999] ~ ~ ~ execute @e[type=Villager,tag=BlueRightInib,score_HaveObjective_min=-999] ~ ~ ~ execute @e[type=Villager,tag=BlueLeftInib,score_HaveObjective_min=-999] ~ ~ ~ scoreboard players tag @a[team=Orange] add InibStand
execute @e[type=Villager,tag=OrangeMiddleInib,score_HaveObjective_min=-999] ~ ~ ~ execute @e[type=Villager,tag=OrangeRightInib,score_HaveObjective_min=-999] ~ ~ ~ execute @e[type=Villager,tag=OrangeLeftInib,score_HaveObjective_min=-999] ~ ~ ~ scoreboard players tag @a[team=Blue] add InibStand
scoreboard players tag @a[x=5906,y=106,z=6000,dx=0,dy=0,dz=0,team=Orange,score_InGame_min=1,m=2,tag=!InibStand] add HaveObjective
scoreboard players tag @a[x=6094,y=106,z=6000,dx=0,dy=0,dz=0,team=Blue,tag=!InibStand,score_InGame_min=1,m=2] add HaveObjective
effect @a[tag=HaveObjective] resistance 1 100 true
execute @a[tag=HaveObjective] ~ ~ ~ summon Fireworks_Rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[0],FadeColors:[0]}]}}}}
tp @a[tag=HaveObjective,team=Orange] 5935 106 6000
tp @a[tag=HaveObjective,team=Blue] 6065 106 6000
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