#Detection des Trous
scoreboard players set @s Tmp 0
execute @s[score_VectorX=-500] ~ ~ ~ detect ~-1 ~-1 ~ air 0 scoreboard players set @s Tmp 1
execute @s[score_VectorX_min=500] ~ ~ ~ detect ~1 ~-1 ~ air 0 scoreboard players set @s Tmp 1
execute @s[score_VectorZ=-500] ~ ~ ~ detect ~ ~-1 ~-1 air 0 scoreboard players set @s Tmp 1
execute @s[score_VectorZ_min=500] ~ ~ ~ detect ~ ~-1 ~1 air 0 scoreboard players set @s Tmp 1
scoreboard players set @s[score_Tmp_min=1] LineMoveTime 0
scoreboard players tag @s[score_Tmp_min=1] remove LineMoveJump