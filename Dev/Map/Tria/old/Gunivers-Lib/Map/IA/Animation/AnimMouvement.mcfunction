#Animation des jambes et des bras pendant la marche
execute @e[score_AnimMouvement_min=1] ~ ~ ~ scoreboard players operation @s LegTime += @s AnimMoveSpeed
scoreboard players add @e[tag=Leg+,score_LegTime_min=10] LegState 1
scoreboard players remove @e[tag=!Leg+,score_LegTime_min=10] LegState 1
scoreboard players tag @e[tag=Leg+,score_LegState_min=2] remove Leg+
scoreboard players tag @e[tag=!Leg+,score_LegState=-2] add Leg+
execute @e[score_LegTime_min=10] ~ ~ ~ function Gunivers-Lib:Map/IA/Animation/UpdateLegs