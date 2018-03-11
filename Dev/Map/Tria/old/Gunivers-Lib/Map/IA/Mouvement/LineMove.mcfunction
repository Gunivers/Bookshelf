#Fait se déplacer une IA suivant son orientation
#Pour utiliser ce systeme, mettre le score LineMoveIA au temps que le déplacement doit durer et le score VectorSpeed a la vitesse voulue (1 a 400 centiblocks/tick)
#Ce temps se calcule comme ça: Temps = ( DistanceVoulue * 100 / VectorSpeed ) + 1
#Set LineMoveTime a 0 pour forcer l'arret du mouvement
#Tag LineMoveTwall pour que l'IA s'arrete quand elle rencontre un mur 
#Tag LineMoveTjump pour que l'IA saute quand elle voit que c'est possible (Tag LineMoveJump pour forcer un saut)
#Tag LineMoveNoJump pour que l'IA s'arrete quand elle devrait faire un saut
#Tag LineMoveTfall pour que l'IA s'arrete si elle arrive devant un trou

#Attention, si la vitesse est supérieure a 1 block/tick, les detections de collisions ne seront pas fiables !

scoreboard players tag @e[score_LineMoveTime_min=1] add Moving
scoreboard players set @e[score_LineMoveTime_min=1] AnimMouvement 1

#Detection des sauts
execute @e[tag=LineMoveTjump,score_LineMoveTime_min=1] ~ ~ ~ function Gunivers-Lib:Map/IA/Mouvement/LineMoveJump

#Detection des murs
execute @e[tag=LineMoveTwall,score_LineMoveTime_min=1] ~ ~ ~ function Gunivers-Lib:Map/IA/Mouvement/LineMoveColl

#Detection des trous
execute @e[tag=LineMoveTfall,score_LineMoveTime_min=1] ~ ~ ~ function Gunivers-Lib:Map/IA/Mouvement/LineMoveFall

#Sauts
execute @e[tag=LineMoveNoJump] ~ ~ ~ scoreboard players set @s[tag=LineMoveJump] LineMoveTime 0
execute @e[tag=LineMoveNoJump] ~ ~ ~ scoreboard players tag @s[tag=LineMoveJump] remove LineMoveJump
tp @e[tag=LineMoveJump,score_LineMoveTime_min=1] ~ ~1 ~
scoreboard players tag @e remove LineMoveJump

#Temps
scoreboard players remove @e[score_LineMoveTime_min=1] LineMoveTime 1
scoreboard players tag @e[score_LineMoveTime_min=1] remove LineMoveEnd
scoreboard players tag @e[score_LineMoveTime_min=0,score_LineMoveTime=0] add LineMoveEnd