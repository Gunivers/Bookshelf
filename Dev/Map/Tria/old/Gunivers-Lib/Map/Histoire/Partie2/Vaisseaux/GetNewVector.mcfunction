#Tag PlaneMovement pour utiliser l'intelligence de déplacement
#Tag PlaneIA pour Tirer quand un ennemi est en ligne de tir
#Tag Plane pour pouvoir etre visé et évité par les autres avions

scoreboard players tag @s add Self
scoreboard players tag @s remove PlaneEloigne
scoreboard players tag @s remove PlaneCenter
scoreboard players tag @s remove PlaneCenterE
scoreboard players tag @s add PlaneFonce

#Décide de la direction qui doit etre prise (retourner au centre, s'eloigner par rapport a un autre vaisseau, foncer vers une cible)
scoreboard players tag @s[x=2000,y=128,z=2000,rm=150,r=250] add PlaneCenter
scoreboard players tag @s[x=2000,y=128,z=2000,r=30] add PlaneCenterE
scoreboard players tag @s[tag=PlaneCenterE] add PlaneCenter
scoreboard players tag @s[score_LocY=20] add PlaneCenter
scoreboard players tag @s[score_LocY_min=246] add PlaneCenter

scoreboard players tag @s remove Plane
scoreboard players tag @e[tag=Plane,r=15,c=1] add TropProche
scoreboard players tag @s[tag=!MissileAuto] add Plane
execute @e[tag=TropProche] ~ ~ ~ scoreboard players tag @e[tag=Self] add PlaneEloigne

scoreboard players tag @s[tag=PlaneCenter] remove PlaneEloigne
scoreboard players tag @s[tag=PlaneEloigne] remove PlaneFonce
scoreboard players tag @s[tag=PlaneCenter] remove PlaneFonce

scoreboard players tag @s[tag=MissileAuto] remove PlaneEloigne
scoreboard players tag @s[tag=MissileAuto] remove PlaneCenter
scoreboard players tag @s[tag=MissileAuto] add PlaneFonce
scoreboard players tag @s[tag=MissileAuto,score_CanBeAlive=-50] remove PlaneFonce

#Calcul du vecteur
execute @s[tag=PlaneEloigne] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/Eloignement
execute @s[tag=PlaneFonce] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/FonceVersCible
execute @s[tag=PlaneCenter] ~ ~ ~ function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/ReturnToCenter

scoreboard players operation @s[tag=MissileAuto] TargetVectorX *= 2 Constant
scoreboard players operation @s[tag=MissileAuto] TargetVectorY *= 2 Constant
scoreboard players operation @s[tag=MissileAuto] TargetVectorZ *= 2 Constant
scoreboard players operation @s[tag=Plane,score_Team_min=1,score_Team=1] TargetVectorX *= 2 Constant
scoreboard players operation @s[tag=Plane,score_Team_min=1,score_Team=1] TargetVectorY *= 2 Constant
scoreboard players operation @s[tag=Plane,score_Team_min=1,score_Team=1] TargetVectorZ *= 2 Constant

scoreboard players tag @e remove TropProche
scoreboard players tag @s remove Self
scoreboard players tag @s remove AskNewVector
scoreboard players tag @s remove GetNewVector





















































