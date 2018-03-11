#Calcule un vecteur vers la cible et regarde si il y a un obstacle
function Gunivers-Lib:Map/IA/Combat/GetVectorToTargetId
scoreboard players set @s DirProjType -1
scoreboard players tag @s add DirShoot
scoreboard players tag @s add WaitTestResult
scoreboard players set @s VisTestWait 1
scoreboard players tag @s remove IsTargetVisible