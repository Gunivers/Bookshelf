scoreboard players set Map:River Info -2
scoreboard players reset Map:Arena Info
scoreboard players reset Map:Ruins Info
gamemode 3 @a[x=3000,y=120,z=3000,r=5,team=Spec,m=2]
execute @r[x=2000,y=100,z=2000,rm=150,score_InGame_min=1] ~ ~ ~ tp @a[team=Spec,m=2] 3000 120 3000
tp @a[score_LifeState=-1,score_LifeState_min=-10] 3000 120 3000
tp @a[score_LifeState=400,score_LifeState_min=398,score_EffNoDie=0,team=Orange] 2892 99 2999 -90 0
tp @a[score_Back=141,score_Back_min=140,team=Blue] 3108 99 3001 90 0
tp @a[score_LifeState=400,score_LifeState_min=398,score_EffNoDie=0,team=Blue] 3108 99 3001 90 0
execute @a[score_InGame_min=1] ~ ~ ~ tp @a[x=-21,y=200,z=-21,dx=42,dy=1,dz=42,score_InGame_min=1] 3000 120 3000
tp @a[score_Back=141,score_Back_min=140,team=Orange] 2892 99 2999 -90 0
tp @a[x=0,y=100,z=0,r=100,m=3] 3000 100 3000
spawnpoint @a[score_LifeState_min=1,score_LifeState=399,team=Orange,InGame_min=1] 2892 99 2999 -90 0
spawnpoint @a[score_LifeState_min=1,score_LifeState=399,team=Blue,InGame_min=1] 3108 99 3001 90 0
execute @e[type=Villager,name=Blue,score_Class_min=2] ~ ~ ~ setblock 2855 110 2951 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class=0] ~ ~ ~ setblock 2855 110 2951 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class_min=2] ~ ~ ~ setblock 3145 110 3049 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class=0] ~ ~ ~ setblock 3145 110 3049 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class_min=3] ~ ~ ~ setblock 2855 111 2951 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class=1] ~ ~ ~ setblock 2855 111 2951 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class_min=3] ~ ~ ~ setblock 3145 111 3049 minecraft:air 0
execute @e[type=Villager,name=Blue,score_Class=1] ~ ~ ~ setblock 3145 111 3049 minecraft:air 0
summon minecraft:painting 5001 103 5010 {Facing:2,Motive:"Stage"}
summon minecraft:painting 4999 103 5010 {Facing:2,Motive:"Graham"}