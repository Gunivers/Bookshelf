
scoreboard players tag @e[tag=ShootVisTest] remove CanFindTarget
execute @e[tag=Fighting,score_Team_min=1,score_Team=1] ~ ~ ~ execute @s[tag=LocUpdated] ~ ~ ~ scoreboard players tag @e[tag=ShootVisTest,score_Team_min=2,score_Team=2] add CanFindTarget
execute @e[tag=Fighting,score_Team_min=2,score_Team=2] ~ ~ ~ execute @s[tag=LocUpdated] ~ ~ ~ scoreboard players tag @e[tag=ShootVisTest,score_Team_min=1,score_Team=1] add CanFindTarget

execute @a[score_Id_min=1,score_Id=4,tag=LocUpdated] ~ ~ ~ scoreboard players tag @e[tag=ShootVisTest,score_Team_min=2,score_Team=2] add OnlyPlayer
execute @e[tag=Fighting,score_Team_min=1,score_Team=1] ~ ~ ~ execute @s[tag=LocUpdated] ~ ~ ~ scoreboard players tag @e[tag=ShootVisTest,score_Team_min=2,score_Team=2] remove OnlyPlayer