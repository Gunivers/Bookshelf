
# SYSTEME SQRT
# Resolution de la racine carrée d'un nombre
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add Operation dummy
scoreboard objectives add Constant dummy
scoreboard objectives add Temp dummy
scoreboard objectives add Temp2 dummy
scoreboard objectives add Loop dummy

scoreboard players set 2 Constant 2
scoreboard players set -1 Constant -1

# Operation = Score sur lequel faire la racine

# ---------------------------------------------------------------------------------------

# Vérification de la présence d'un nombre négatif
scoreboard players operation @s[score_Operation=-1] Operation *= -1 Constant 

# Operation
scoreboard players operation @s Temp = @s Operation
scoreboard players operation @s Temp /= 2 Constant

# Boucle à executer 20 fois
scoreboard players set @s Loop 20
execute @s ~ ~ ~ function RS:sqrt_2

# Save
scoreboard players operation @s Operation = @s Temp

