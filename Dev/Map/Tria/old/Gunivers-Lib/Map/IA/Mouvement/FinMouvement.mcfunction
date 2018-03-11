
execute @e[tag=FinMouvement] ~ ~ ~ execute @e[tag=TargetIA,r=2,c=1] ~ ~ ~ scoreboard players set @s[tag=!StayOnReached] CanBeAlive 0
execute @e[tag=FinMouvement] ~ ~ ~ scoreboard players set @e[tag=IAmove,r=1,c=1] CanBeAlive 0
scoreboard players set @e[tag=FinMouvement] TimerTool2 0
scoreboard players tag @e[tag=FinMouvement] remove MoveIA
scoreboard players tag @e[tag=FinMouvement] remove RunIA
scoreboard players tag @e[tag=FinMouvement] add InitMoveIA
scoreboard players tag @e[tag=FinMouvement] add MoveFiniIA
scoreboard players tag @e remove FinMouvement
