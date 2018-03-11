#Donne le vecteur qui correspond a l'orientation du regard d'un joueur

execute @s ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["GetOrientation","SetVectors","GetVector"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1}

tp @e[tag=GetVector,r=1,c=1] @s

execute @e[tag=GetVector,c=1,r=2] ~ ~ ~ function Gunivers-Lib:Entity/Get/Orientation

execute @e[tag=GetVector,c=1,r=2] ~ ~ ~ function Gunivers-Lib:Entity/Calcul/SetVectors

tellraw @s {"text":"X: ","extra":[{"color":"red","score":{"name":"@e[tag=GetVector,c=1,r=2]","objective":"VectorX"}},{"text":" | Y: "},{"color":"green","score":{"name":"@e[tag=GetVector,c=1,r=2]","objective":"VectorY"}},{"text":" | Z: "},{"color":"dark_aqua","score":{"name":"@e[tag=GetVector,c=1,r=2]","objective":"VectorZ"}}]}

scoreboard players tag @e[tag=GetVector] remove GetOrientation
scoreboard players tag @e[tag=GetVector] remove SetVectors