scoreboard players set @e[score_ID=3,score_ID=3] TargetID 2
scoreboard players set @e[score_ID=2,score_ID=2] TargetID 3

execute @e[score_ID=3,score_ID_min=3,tag=Old] ~ ~ ~ /function glib:dev/user/leirof/relativity/setlocation
execute @e[score_ID=3,score_ID_min=3,tag=Old] ~ ~ ~ /function glib:dev/user/leirof/relativity/setorientation

execute @e[score_ID=3,score_ID_min=3] ~ ~ ~ /function glib:dev/user/leirof/relativity/getlocation
execute @e[score_ID=3,score_ID_min=3] ~ ~ ~ /function glib:dev/user/leirof/relativity/getorientation

scoreboard players tag @e[score_ID_min=3,score_ID=3] add Old