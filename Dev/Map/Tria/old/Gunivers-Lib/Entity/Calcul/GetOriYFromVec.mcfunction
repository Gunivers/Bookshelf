#Séléctionne une des fonctions de Arccos en fonction de la demande de précision (le numéro a la fin du nom des fonctions correspond a la précision)
scoreboard players set @e[tag=Data] Tmp 10

execute @e[tag=Precision5] ~ ~ ~ scoreboard players set @e[tag=Data] Tmp 5
execute @e[tag=Precision2] ~ ~ ~ scoreboard players set @e[tag=Data] Tmp 2
execute @e[tag=Precision1] ~ ~ ~ scoreboard players set @e[tag=Data] Tmp 1

execute @e[tag=Data,score_Tmp_min=1,score_Tmp=1] ~ ~ ~ function Gunivers-Lib:Entity/Calcul/GetOriYFromVec1
execute @e[tag=Data,score_Tmp_min=2,score_Tmp=2] ~ ~ ~ function Gunivers-Lib:Entity/Calcul/GetOriYFromVec2
execute @e[tag=Data,score_Tmp_min=5,score_Tmp=5] ~ ~ ~ function Gunivers-Lib:Entity/Calcul/GetOriYFromVec5
execute @e[tag=Data,score_Tmp_min=10,score_Tmp=10] ~ ~ ~ function Gunivers-Lib:Entity/Calcul/GetOriYFromVec10

scoreboard players tag @e remove Precision1
scoreboard players tag @e remove Precision2
scoreboard players tag @e remove Precision5
scoreboard players tag @e remove GetOriYFromVec

#De base, la précision est de 10 degrés, mettre les tags Precision5, Precision2 ou Precision1 pour augmenter la precision