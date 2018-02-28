execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ setblock 6094 106 6000 minecraft:standing_banner 4 replace {Base:4}
execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ setblock 5906 106 6000 minecraft:standing_banner 12 replace {Base:14}
execute @e[type=Villager,name=Blue,score_HaveObjective=0] ~ ~ ~ setblock 6094 106 6000 air 0 destroy
execute @e[type=Villager,name=Orange,score_HaveObjective=0] ~ ~ ~ setblock 5906 106 6000 air 0 destroy
execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=6094,y=106,z=6000,r=1,tag=AffectByBlue] HaveObjective 2
execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=5906,y=106,z=6000,r=1,tag=AffectByOrange] HaveObjective 2
execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=6094,y=106,z=6000,r=1,tag=AffectByOrange,score_HaveObjective_min=1] HaveObjective -1
execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=5906,y=106,z=6000,r=1,tag=AffectByBlue,score_HaveObjective_min=1] HaveObjective -1