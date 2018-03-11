#Met a jour le vecteur de tir des IA tirant sur une cible mobile
scoreboard players tag @s add Self
scoreboard players operation @e[tag=Fighting] TargetId -= @s ShooterId
execute @e[score_TargetId_min=0,score_TargetId=0,tag=Fighting] ~ ~ ~ scoreboard players tag @e[tag=Self] add AskLocation
scoreboard players tag @e[score_TargetId_min=0,score_TargetId=0,tag=Fighting] add MovingTarget
scoreboard players tag @e[score_TargetId_min=0,score_TargetId=0,tag=Fighting] add IsTargetVisible
scoreboard players operation @e[tag=Fighting] TargetId += @s ShooterId
scoreboard players tag @s remove Self
