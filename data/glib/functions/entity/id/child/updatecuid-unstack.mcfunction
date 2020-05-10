tag @s remove StackedCUID
execute as @e[tag=UpdateCUID,scores={Id=0..}] run scoreboard players add @s[tag=!CorrectCUID] Id 1
