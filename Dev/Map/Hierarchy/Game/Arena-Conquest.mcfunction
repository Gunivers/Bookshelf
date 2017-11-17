execute @r ~ ~ ~ detect 3877 112 4000 air -1 setblock 3877 112 4000 minecraft:end_gateway 0
execute @r ~ ~ ~ detect 4123 112 4000 air -1 setblock 4123 112 4000 minecraft:end_gateway 0
scoreboard players tag @a remove HaveObjective
execute @e[type=Villager,tag=BlueMiddleInib,score_HaveObjective_min=-999] ~ ~ ~ scoreboard players tag @a[team=Orange] add InibStand
execute @e[type=Villager,tag=OrangeMiddleInib,score_HaveObjective_min=-999] ~ ~ ~ scoreboard players tag @a[team=Blue] add InibStand
scoreboard players tag @a[x=4123,y=111,z=4000,dx=0,dy=0,dz=0,team=Orange,score_InGame_min=1,m=2,tag=!InibStand] add HaveObjective
scoreboard players tag @a[x=3877,y=111,z=4000,dx=0,dy=0,dz=0,team=Blue,tag=!InibStand,score_InGame_min=1,m=2] add HaveObjective
effect @a[tag=HaveObjective] resistance 1 100 true
execute @a[tag=HaveObjective] ~ ~ ~ summon Fireworks_Rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[0],FadeColors:[0]}]}}}}
tp @a[tag=HaveObjective,team=Orange] 3926 101 4000
tp @a[tag=HaveObjective,team=Blue] 4074 101 4000
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