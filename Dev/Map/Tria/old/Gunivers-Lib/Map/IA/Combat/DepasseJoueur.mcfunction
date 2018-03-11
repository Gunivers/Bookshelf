#Calcule un vecteur vers l'entité ayant l'id stocké dans le TargetId de l'executant
scoreboard players tag @s add Self

#Signe de Tmp = Signe du deplacement en X
#Signe de Tmp2 = Signe du deplacement en Z
#Signe de Tmp3 = Axe du déplacement le plus grand (Axe choisi)
scoreboard players operation @s Tmp = @a[tag=LocUpdated,score_Id_min=1,score_Id=4,score_TimerTool2_min=1] LocX
scoreboard players operation @s Tmp -= @s LocX

scoreboard players operation @s Tmp2 = @a[tag=LocUpdated,score_Id_min=1,score_Id=4,score_TimerTool2_min=1] LocZ
scoreboard players operation @s Tmp2 -= @s LocZ

scoreboard players operation @s Tmp3 = @s Tmp
scoreboard players operation @s Tmp3 -= @s Tmp2

tp @s[score_Tmp2_min=1,score_Tmp3=-1] ~ ~ ~ 0 ~
tp @s[score_Tmp=-1,score_Tmp3_min=1] ~ ~ ~ 90 ~
tp @s[score_Tmp2=-1,score_Tmp3=-1] ~ ~ ~ 180 ~
tp @s[score_Tmp_min=1,score_Tmp3_min=1] ~ ~ ~ 270 ~

#Necessaire en 1.12, pas en 1.13
scoreboard players set @s[score_Tmp2_min=1,score_Tmp3=-1] Phi 0
scoreboard players set @s[score_Tmp=-1,score_Tmp3_min=1] Phi 90
scoreboard players set @s[score_Tmp2=-1,score_Tmp3=-1] Phi 180
scoreboard players set @s[score_Tmp_min=1,score_Tmp3_min=1] Phi 270
scoreboard players tag @s add SetVectors

scoreboard players set @s Theta 90
scoreboard players set @s VectorSpeed 20
scoreboard players set @s LineMoveTime 40
scoreboard players tag @s add LineMoveTwall
scoreboard players tag @s add LineMoveTjump
scoreboard players tag @s add LineMoveTfall
scoreboard players tag @s remove Self
function Gunivers-Lib:Map/IA/Combat/KillTestVisibles