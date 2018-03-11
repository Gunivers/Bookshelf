#L'entité qui suit le joueur a différents comportements selon la distance avec le joueur le plus proche
#Rayon de 3 = stop
#Rayon de 6+ = bouge (vers le joueur)
#Rayon de 10+ = cours
scoreboard players tag @s add Self
scoreboard players tag @p[score_Id_min=1,score_Id=4] add NearestPlayer

scoreboard players tag @s remove RunIA
execute @a[tag=NearestPlayer,r=3] ~ ~ ~ execute @e[tag=Self,r=3] ~ ~ ~ scoreboard players tag @s[tag=MoveIA] add FinMouvement
execute @a[tag=NearestPlayer,rm=6] ~ ~ ~ scoreboard players tag @e[tag=Self] add MoveIA
execute @a[tag=NearestPlayer,rm=10] ~ ~ ~ scoreboard players tag @e[tag=Self] add RunIA

scoreboard players tag @a remove NearestPlayer
scoreboard players tag @s remove Self

#Passage dans la team ennemie pour qu'il aille vers le joueur, et non vers les cibles
scoreboard players set @e[type=zombie,tag=IAmove,r=2,c=1] Team 2
