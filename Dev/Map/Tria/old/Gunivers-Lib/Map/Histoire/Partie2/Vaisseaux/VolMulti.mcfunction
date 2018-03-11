#Gere les vaisseaux en vol

#PlanePhi et PlaneTheta sont les axes de l'orientation du tick précédent
execute @e[tag=Flying] ~ ~ ~ scoreboard players operation @s Theta -= @s PlaneTheta
execute @e[tag=Flying] ~ ~ ~ scoreboard players operation @s Phi -= @s PlanePhi

#Evite qu'il ne fasse tout le tour quand il faut passer par 0 (exemple: pour passer de 4 degres a 352 degres)
scoreboard players set @e[tag=Flying,score_Phi_min=180] Phi -5
scoreboard players set @e[tag=Flying,score_Phi=-180] Phi 5

#Limite la vitesse de rotation
scoreboard players set @e[tag=Flying,score_Theta_min=5] Theta 5
scoreboard players set @e[tag=Flying,score_Theta=-5] Theta -5
scoreboard players set @e[tag=Flying,score_Phi_min=5] Phi 5
scoreboard players set @e[tag=Flying,score_Phi=-5] Phi -5

#Bloque le calcul des vecteurs et la rotation du model si l'orientation ne change pas
scoreboard players tag @e[tag=Flying] add RotateModel
scoreboard players tag @e[tag=Flying,score_Phi_min=0,score_Phi=0,score_Theta_min=0,score_Theta=0] remove SetVectors
scoreboard players tag @e[tag=Flying,score_Phi_min=0,score_Phi=0,score_Theta_min=0,score_Theta=0] remove RotateModel

#Tags pour l'orientation du model
scoreboard players tag @e remove PlaneTurnR
scoreboard players tag @e remove PlaneTurnL
execute @e[tag=Flying,score_Phi_min=5] ~ ~ ~ scoreboard players tag @e[tag=PlaneT,r=1] add PlaneTurnL
execute @e[tag=Flying,score_Phi=-5] ~ ~ ~ scoreboard players tag @e[tag=PlaneT,r=1] add PlaneTurnR

#Mise a jour de l'orientation finale
execute @e[tag=Flying] ~ ~ ~ scoreboard players operation @s PlaneTheta += @s Theta
execute @e[tag=Flying] ~ ~ ~ scoreboard players operation @s PlanePhi += @s Phi
scoreboard players operation @e[tag=Flying,score_PlanePhi=-1] PlanePhi += 360 Constant
scoreboard players operation @e[tag=Flying,score_PlanePhi_min=361] PlanePhi -= 360 Constant
execute @e[tag=Flying] ~ ~ ~ scoreboard players operation @s Theta = @s PlaneTheta
execute @e[tag=Flying] ~ ~ ~ scoreboard players operation @s Phi = @s PlanePhi
execute @e[tag=PlaneT] ~ ~ ~ scoreboard players operation @s PlaneTheta = @e[tag=Plane,r=2,c=1] PlaneTheta
execute @e[tag=PlaneT] ~ ~ ~ scoreboard players operation @e[tag=PlaneText,r=2,c=2] PlanePhi = @e[tag=Plane,r=2,c=1] PlanePhi





















































