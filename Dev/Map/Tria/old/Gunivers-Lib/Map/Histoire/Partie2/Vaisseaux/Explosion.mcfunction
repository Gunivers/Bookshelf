scoreboard players set @e[tag=ExplPlane,score_TimerTool=0] TimerTool 81
scoreboard players remove @e[tag=ExplPlane] TimerTool 1
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=80,score_TimerTool=80] add DontKillExpl
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=80,score_TimerTool=80] add Explode
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=80,score_TimerTool=80] remove SetVectors
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=80,score_TimerTool=80] remove GetOrientation
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=80,score_TimerTool=80] remove PlaneMovement
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=80,score_TimerTool=80] remove PlaneIA
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=80,score_TimerTool=80] remove Plane
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=0,score_TimerTool=0] add BigExpl
scoreboard players tag @e[tag=ExplPlane,score_TimerTool_min=0,score_TimerTool=0] add Explode
execute @e[tag=ExplPlane] ~ ~ ~ particle smoke ~ ~ ~ 0.1 0.1 0.1 0.01 50 force





















































