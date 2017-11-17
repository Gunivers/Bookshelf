execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ setblock 4123 111 4000 minecraft:standing_banner 4 replace {Base:4}
execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ setblock 3877 111 4000 minecraft:standing_banner 12 replace {Base:14}
execute @e[type=Villager,name=Blue,score_HaveObjective=0] ~ ~ ~ setblock 4123 111 4000 air 0 destroy
execute @e[type=Villager,name=Orange,score_HaveObjective=0] ~ ~ ~ setblock 3877 111 4000 air 0 destroy
execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=4123,y=111,z=4000,r=1,tag=AffectByBlue] HaveObjective 2
execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=3877,y=111,z=4000,r=1,tag=AffectByOrange] HaveObjective 2
execute @e[type=Villager,name=Blue,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=4123,y=111,z=4000,r=1,tag=AffectByOrange,score_HaveObjective_min=1] HaveObjective -1
execute @e[type=Villager,name=Orange,score_HaveObjective_min=1] ~ ~ ~ scoreboard players set @p[x=3877,y=111,z=4000,r=1,tag=AffectByBlue,score_HaveObjective_min=1] HaveObjective -1