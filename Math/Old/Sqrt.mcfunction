#-------- Fonction permettant de calculer la racine carrée d'un nombre --------

#@Author: theogiraudet/Oromis

#Constantes
scoreboard players set 2 Constant 2
scoreboard players set -1 Constant -1

#Initialisation
scoreboard players set @s[tag=!launchSqrt] sqrt 20

#Vérification de la présence d'un nombre négatif
scoreboard players operation @s[score_Operation=-1] Operation *= -1 Constant 

#Operation
execute @s[tag=!launchSqrt] ~ ~ ~ scoreboard players operation @s[tag=setSqrt] Temp = @s[tag=setSqrt] Operation
execute @s[tag=!launchSqrt] ~ ~ ~ scoreboard players operation @s[tag=!launchSqrt] Temp /= 2 Constant
execute @s[tag=!launchSqrt] ~ ~ ~ scoreboard players tag @s[tag=setSqrt] add launchSqrt

#Boucle
scoreboard players remove @s sqrt 1
scoreboard players operation @s[tag=setSqrt] Temp2 = @s[tag=setSqrt] Operation
scoreboard players operation @s[tag=setSqrt] Operation /= @s[tag=setSqrt] Temp
scoreboard players operation @s[tag=setSqrt] Temp += @s[tag=setSqrt] Operation
scoreboard players operation @s[tag=setSqrt] Temp /= 2 Constant
scoreboard players operation @s[tag=setSqrt] Operation = @s[tag=setSqrt] Temp2

#Save
scoreboard players tag @s[tag=setSqrt,score_sqrt=0] add getSqrt
scoreboard players tag @s[tag=getSqrt] remove setSqrt
scoreboard players tag @s[tag=getSqrt] remove launchSqrt
scoreboard players operation @s[tag=getSqrt] Operation = @s[tag=getSqrt] Temp


#---------------------------- Formule de Héron ------------------------------