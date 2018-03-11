scoreboard players tag @s remove CollideBars

scoreboard players operation @s Random = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=3] Random
execute @s[score_Random_min=1,score_Random=1] ~ ~ ~ playsound block.anvil.land ambient @a[r=15]
execute @s[score_Random_min=1,score_Random=1] ~ ~ ~ particle blockcrack ~ ~ ~ 0 0.1 0 0 30 force @a 101
kill @s[score_Random_min=1,score_Random=1]