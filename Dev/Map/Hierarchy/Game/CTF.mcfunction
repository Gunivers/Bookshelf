function gunivers-lib:dev/map/hierarchy/game/noconquest
function gunivers-lib:dev/map/hierarchy/game/nodeathmatch

scoreboard players set Mode:CTF Info -3
scoreboard players add @e[x=0,y=65,z=0,r=10,type=Villager,score_HaveObjective=0] HaveObjective 1
execute @r[score_HaveObjective_min=1,tag=AffectByBlue] ~ ~ ~ scoreboard players set @e[type=Villager,name=Blue] HaveObjective -1
execute @r[score_HaveObjective_min=1,tag=AffectByOrange] ~ ~ ~ scoreboard players set @e[type=Villager,name=Orange] HaveObjective -1
execute @r[tag=AffectByBlue,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @a[rm=1,tag=AffectByBlue] HaveObjective 0
execute @r[tag=AffectByOrange,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @a[rm=1,tag=AffectByOrange] HaveObjective 0
execute @a[score_HaveObjective_min=2,tag=AffectByOrange] ~ ~ ~ tellraw @a[tag=IsPlaying] ["",{"selector":"@p","color":"blue","bold":true},{"text":" took the orange flag !","color":"gold","bold":true}]
execute @a[score_HaveObjective_min=2,tag=AffectByBlue] ~ ~ ~ tellraw @a[tag=IsPlaying] ["",{"selector":"@p","color":"gold","bold":true},{"text":" took the blue flag !","color":"blue","bold":true}]
effect @a[score_HaveObjective_min=2,tag=IsPlaying] resistance 1 100 true
execute @a[score_HaveObjective_min=2,tag=AffectByOrange] ~ ~ ~ summon Fireworks_Rocket ~ ~0 ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[11519],FadeColors:[2437522,6719955]}]}}}}
execute @a[score_HaveObjective_min=2,tag=AffectByBlue] ~ ~ ~ summon Fireworks_Rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[16734464],FadeColors:[11743532]}]}}}}
scoreboard players set @a[score_HaveObjective_min=2] HaveObjective 1
execute @a[score_HaveObjective=-1,tag=AffectByOrange] ~ ~ ~ tellraw @a[tag=IsPlaying] ["",{"selector":"@p","color":"blue","bold":true},{"text":" took the orange flag !","color":"gold","bold":true}]
execute @a[score_HaveObjective=-1,tag=AffectByBlue] ~ ~ ~ tellraw @a[tag=IsPlaying] ["",{"selector":"@p","color":"gold","bold":true},{"text":" captured the blue flag !","color":"blue","bold":true}]
effect @a[score_HaveObjective=-1,tag=IsPlaying] resistance 1 100 true
execute @a[score_HaveObjective=-1,tag=AffectByOrange] ~ ~ ~ summon Fireworks_Rocket ~ ~0 ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[11519],FadeColors:[2437522,6719955]}]}}}}
execute @a[score_HaveObjective=-1,tag=AffectByBlue] ~ ~ ~ summon Fireworks_Rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[16734464],FadeColors:[11743532]}]}}}}
execute @p[score_HaveObjective=-1,tag=AffectByBlue] ~ ~ ~ scoreboard players remove @e[type=Villager,name=Blue] Score 10
execute @p[score_HaveObjective=-1,tag=AffectByBlue] ~ ~ ~ scoreboard players add @e[type=Villager,name=Orange] Score 10
execute @p[score_HaveObjective=-1,tag=AffectByOrange] ~ ~ ~ scoreboard players remove @e[type=Villager,name=Orange] Score 10
execute @p[score_HaveObjective=-1,tag=AffectByOrange] ~ ~ ~ scoreboard players add @e[type=Villager,name=Blue] Score 10
scoreboard players set @a[score_HaveObjective=-1] HaveObjective 0
effect @a[score_HaveObjective_min=1] glowing 1 1 true
effect @a[score_HaveObjective_min=1] slowness 1 0 true
scoreboard players set @a[score_HaveObjective_min=1] EffNoTp 5
scoreboard players set @a[score_HaveObjective_min=1] EffNoMove 5