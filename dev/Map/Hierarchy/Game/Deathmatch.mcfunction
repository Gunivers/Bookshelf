function gunivers-lib:dev/map/hierarchy/game/noctf
function gunivers-lib:dev/map/hierarchy/game/noconquest

scoreboard players set Mode:Deathmatch Info -3
execute @a[score_EffNoDie=0,score_InGame_min=1,score_IsDead=2,score_IsDead_min=2,team=Orange] ~ ~ ~ scoreboard players remove @e[type=Villager,name=Orange] Score 5
execute @a[score_EffNoDie=0,score_InGame_min=1,score_IsDead=2,score_IsDead_min=2,team=Blue] ~ ~ ~ scoreboard players remove @e[type=Villager,name=Blue] Score 5
execute @a[score_EffNoDie=0,score_InGame_min=1,score_IsDead=2,score_IsDead_min=2,team=Blue] ~ ~ ~ scoreboard players add @e[type=Villager,name=Orange] Score 5
execute @a[score_EffNoDie=0,score_InGame_min=1,score_IsDead=2,score_IsDead_min=2,team=Orange] ~ ~ ~ scoreboard players add @e[type=Villager,name=Blue] Score 5
