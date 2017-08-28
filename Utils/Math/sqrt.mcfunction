# NAME: Racine carré
# PATH: Gunivers-Lib:Utils/Math/Sqrt

# AUTHOR: Theogiraudet/Oromis
# CONTRIBUTORS:
# - Luludatra

# VERSION: 1.1
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - Gunivers-Lib:Import/Math (MCfunction)
# - Tmp (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Tmp4 (score dummy)

# INPUT:
# - Tmp (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE: Resolution de la racine carrée d'un nombre

# CONFIGURATION:
scoreboard players set @s Tmp2 20
# -> Permet de gérer la précision du resultat. Valeur par défaut: 20. Plus cette valeur est grande, plus le résultat sera précis et l'exécution de la fonction sera lourde.

# CODE:

# Vérification de la présence d'un nombre négatif
scoreboard players operation @s Res = @s Tmp
scoreboard players operation @s[score_Res=-1] Res *= -1 Constant 

# Operation
scoreboard players operation @s Tmp3 = @s Res
scoreboard players operation @s Tmp3 /= 2 Constant

# Boucle à executer {Tmp2} fois
execute @s ~ ~ ~ function Gunivers-Lib:Utils/Math/Sqrt-Loop

# Save
scoreboard players operation @s Res = @s Tmp4

