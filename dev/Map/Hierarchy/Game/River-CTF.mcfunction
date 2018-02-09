execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ setblock 2855 110 2951 minecraft:standing_banner 12 replace {Base:14}
execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ setblock 3145 110 3049 minecraft:standing_banner 4 replace {Base:4}
execute @e[type=Villager,name=Orange,score_HaveObjective=0] ~ ~ ~ setblock 2855 110 2951 air 0 destroy
execute @e[type=Villager,name=Blue,score_HaveObjective=0] ~ ~ ~ setblock 3145 110 3049 air 0 destroy
execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=3145,y=110,z=3049,r=1,tag=AffectByBlue] HaveObjective 2
execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=2855,y=110,z=2951,r=1,tag=AffectByOrange] HaveObjective 2
execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=3145,y=110,z=3049,r=1,tag=AffectByOrange,score_HaveObjective_min=1] HaveObjective -1
execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=2855,y=110,z=2951,r=1,tag=AffectByBlue,score_HaveObjective_min=1] HaveObjective -1