#Lance une action aléatoire
scoreboard players add @e[tag=RandomMoves] TimeRandomMove 0
scoreboard players tag @e[score_TimeRandomMove_min=0,score_TimeRandomMove=0,tag=RandomMoves] add RunMovesTimer
execute @e[score_TimeRandomMove_min=0,score_TimeRandomMove=0,tag=RandomMoves] ~ ~ ~ function Gunivers-Lib:Map/IA/Animation/SelectRandomMove if @s[tag=!MoveIA]

#Lance un temps aléatoire entre 2.1 et 8 secondes
scoreboard players operation @e[score_TimeRandomMove_min=-1,score_TimeRandomMove=-1,tag=RandomMoves] Random = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=7] Random
scoreboard players operation @e[score_TimeRandomMove_min=-1,score_TimeRandomMove=-1,tag=RandomMoves] Random *= 20 Constant
scoreboard players operation @e[score_TimeRandomMove_min=-1,score_TimeRandomMove=-1,tag=RandomMoves] Random += @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
scoreboard players operation @e[score_TimeRandomMove_min=-1,score_TimeRandomMove=-1,tag=RandomMoves] Random += @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
execute @e[score_TimeRandomMove_min=-1,score_TimeRandomMove=-1,tag=RandomMoves] ~ ~ ~ scoreboard players operation @s TimeRandomMove = @s Random
scoreboard players remove @e[score_TimeRandomMove_min=0,tag=RunMovesTimer] TimeRandomMove 1




