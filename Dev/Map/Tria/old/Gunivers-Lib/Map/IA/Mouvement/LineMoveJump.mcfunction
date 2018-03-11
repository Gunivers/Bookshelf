#Detection des Sauts Possibles
scoreboard players tag @s add LineMoveJump
execute @s[score_VectorX=-500] ~ ~ ~ detect ~-1 ~ ~ air 0 scoreboard players tag @s remove LineMoveJump
execute @s[score_VectorX_min=500] ~ ~ ~ detect ~1 ~ ~ air 0 scoreboard players tag @s remove LineMoveJump
execute @s[score_VectorZ=-500] ~ ~ ~ detect ~ ~ ~-1 air 0 scoreboard players tag @s remove LineMoveJump
execute @s[score_VectorZ_min=500] ~ ~ ~ detect ~ ~ ~1 air 0 scoreboard players tag @s remove LineMoveJump