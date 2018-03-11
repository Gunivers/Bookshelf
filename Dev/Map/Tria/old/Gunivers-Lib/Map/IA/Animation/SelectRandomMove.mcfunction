#Séléctionne une action aléatoire (mouvements de tete etc...)

#Actions : 
# 1: Regarde a Gauche
# 2: Regarde a Droite
# 3: Regarde a Droite puis a Gauche
# 4 a 7: Tourne sur elle même 
execute @s ~ ~ ~ scoreboard players operation @s Random = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random

#Mouvements de tete (Droite et Gauche)
scoreboard players set @s[score_Random_min=1,score_Random=1] TimelineLook 50
scoreboard players set @s[score_Random_min=2,score_Random=3] TimelineLook 100
scoreboard players tag @s[score_Random_min=2,score_Random=2] add OnlyRight
scoreboard players tag @s[score_Random_min=1,score_Random=3] remove RunMovesTimer

#Mouvements du corps
tp @s[score_Random_min=4,score_Random=4] ~ ~ ~ ~40 ~
tp @s[score_Random_min=5,score_Random=5] ~ ~ ~ ~-40 ~
tp @s[score_Random_min=6,score_Random=6] ~ ~ ~ ~200 ~
tp @s[score_Random_min=7,score_Random=7] ~ ~ ~ ~160 ~
tp @s[score_Random_min=8,score_Random=8] ~ ~ ~ ~-65 ~
tp @s[score_Random_min=9,score_Random=9] ~ ~ ~ ~115 ~

#Déplacements
scoreboard players operation @s[score_Random_min=8,score_Random=10] LineMoveTime = @r[type=armor_stand,tag=Random,score_Random_min=6,score_Random=10] Random
scoreboard players operation @s[score_Random_min=8,score_Random=10] LineMoveTime *= 2 Constant
scoreboard players set @s[score_Random_min=8,score_Random=10] VectorSpeed 10
scoreboard players tag @s[score_Random_min=8,score_Random=10] add LineMoveTwall
scoreboard players tag @s[score_Random_min=8,score_Random=10] add LineMoveTfall
scoreboard players tag @s[score_Random_min=8,score_Random=10] add LineMoveTjump
scoreboard players tag @s[score_Random_min=8,score_Random=10] add LineMoveNoJump

#A enlever ! (Inutile en 1.13) -----------------------------------------------------------
scoreboard players tag @s[score_Random_min=8,score_Random=10] add GetOrientation
scoreboard players tag @s[score_Random_min=8,score_Random=10] add SetOrientation
scoreboard players tag @s[score_Random_min=8,score_Random=10] add SetVectors
scoreboard players tag @s[score_Random_min=8,score_Random=10] add Moving
#-----------------------------------------------------------------------------------------

#Evite que le tag RunMovesTimer soit repris
scoreboard players remove @s TimeRandomMove 1




