#Gere les vaisseaux en vol

#PlanePhi et PlaneTheta sont les axes de l'orientation du tick précédent
scoreboard players operation @s Theta -= @s PlaneTheta
scoreboard players operation @s Phi -= @s PlanePhi

#Evite qu'il ne fasse tout le tour quand il faut passer par 0 (exemple: pour passer de 4 degres a 352 degres)
scoreboard players set @s[score_Phi_min=180] Phi -5
scoreboard players set @s[score_Phi=-180] Phi 5

#Limite la vitesse de rotation
scoreboard players set @s[score_Theta_min=5] Theta 5
scoreboard players set @s[score_Theta=-5] Theta -5
scoreboard players set @s[score_Phi_min=5] Phi 5
scoreboard players set @s[score_Phi=-5] Phi -5

#Bloque le calcul des vecteurs et la rotation du model si l'orientation ne change pas
scoreboard players tag @s add RotateModel
scoreboard players tag @s[score_Phi_min=0,score_Phi=0,score_Theta_min=0,score_Theta=0] remove SetVectors
scoreboard players tag @s[score_Phi_min=0,score_Phi=0,score_Theta_min=0,score_Theta=0] remove RotateModel

#Tags pour l'orientation du model
scoreboard players tag @s remove PlaneTurnR
scoreboard players tag @s remove PlaneTurnL
execute @s[score_Phi_min=5] ~ ~ ~ scoreboard players tag @e[tag=PlaneT,r=1] add PlaneTurnL
execute @s[score_Phi=-5] ~ ~ ~ scoreboard players tag @e[tag=PlaneT,r=1] add PlaneTurnR

#Mise a jour de l'orientation finale
scoreboard players operation @s PlaneTheta += @s Theta
scoreboard players operation @s PlanePhi += @s Phi
scoreboard players operation @s[score_PlanePhi=-1] PlanePhi += 360 Constant
scoreboard players operation @s[score_PlanePhi_min=361] PlanePhi -= 360 Constant
scoreboard players operation @s Theta = @s PlaneTheta
scoreboard players operation @s Phi = @s PlanePhi
execute @e[tag=PlaneT] ~ ~ ~ scoreboard players operation @s PlaneTheta = @e[tag=Plane,r=2,c=1] PlaneTheta
execute @e[tag=PlaneT] ~ ~ ~ scoreboard players operation @e[tag=PlaneText,r=2,c=2] PlanePhi = @e[tag=Plane,r=2,c=1] PlanePhi





















































