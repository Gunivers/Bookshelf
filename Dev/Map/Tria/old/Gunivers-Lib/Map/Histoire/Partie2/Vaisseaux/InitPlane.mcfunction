scoreboard players tag @s add PlaneMovement
function Gunivers-Lib:Map/Tools/Identifiants/AddShooterId
scoreboard players set @s 1stAmoLoaded 30
scoreboard players set @s Imprecision 8
scoreboard players add @s TimerTool 0
scoreboard players add @s cdShoot1st 0
scoreboard players add @s Reloading1st 0
scoreboard players add @s Reloading2nd 0
execute @s[score_IsControled_min=1] ~ ~ ~ scoreboard players set @p[score_InVehicle_min=11,score_InVehicle=11,r=2] 1stAmoLoaded 30
scoreboard players set @s Health 30
scoreboard players set @s[tag=MoreHealth] Health 60
scoreboard players tag @s remove InitPlane