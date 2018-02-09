scoreboard players set Map:Ruins Info -2
scoreboard players reset Map:River Info
scoreboard players reset Map:Arena Info
gamemode 3 @a[x=6000,y=120,z=6000,r=5,team=Spec,m=2]
execute @r[x=2000,y=100,z=2000,rm=150,score_InGame_min=1] ~ ~ ~ tp @a[team=Spec,m=2] 6000 120 6000
tp @a[score_LifeState=-1,score_LifeState_min=-10] 6000 120 6000
tp @a[score_LifeState=400,score_LifeState_min=398,score_EffNoDie=0,team=Orange] 5935 101 6000 -90 0
tp @a[score_Back=141,score_Back_min=140,team=Blue] 6065 101 6000 90 0
tp @a[score_LifeState=400,score_LifeState_min=398,score_EffNoDie=0,team=Blue] 6065 101 6000 90 0
execute @a[score_InGame_min=1] ~ ~ ~ tp @a[x=-21,y=200,z=-21,dx=42,dy=1,dz=42,score_InGame_min=1] 6000 140 6000
tp @a[score_Back=141,score_Back_min=140,team=Orange] 5935 101 6000 -90 0
tp @a[x=0,y=100,z=0,r=100,m=3] 6000 120 6000
spawnpoint @a[score_LifeState_min=1,score_LifeState=399,team=Orange,InGame_min=1] 5935 101 6000 -90 0
spawnpoint @a[score_LifeState_min=1,score_LifeState=399,team=Blue,InGame_min=1] 6065 101 6000 90 0
execute @e[type=Villager,name=Blue,score_Class_min=2] ~ ~ ~ setblock 6094 106 6000 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class=0] ~ ~ ~ setblock 6094 106 6000 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class_min=2] ~ ~ ~ setblock 5906 106 6000 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class=0] ~ ~ ~ setblock 5906 106 6000 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class_min=3] ~ ~ ~ setblock 6094 107 6000 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class=1] ~ ~ ~ setblock 6094 107 6000 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class_min=3] ~ ~ ~ setblock 5906 107 6000 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class=1] ~ ~ ~ setblock 5906 107 6000 minecraft:air 0
summon minecraft:painting 5001 103 5010 {Facing:2,Motive:"Match"}
summon minecraft:painting 4999 104 5010 {Facing:2,Motive:"Aztec2"}
summon minecraft:painting 4999 103 5010 {Facing:2,Motive:"Plant"}