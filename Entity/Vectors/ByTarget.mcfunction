# Get Vector To TargetId

# @Author: KubbyDev

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Gunivers-Lib:Entity/Calcul/VectorNormalizer (function)
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)
# - ShooterId (score dummy)
# - TargetId (score dummy)

# Input values:
# - LocX (score dummy) (On the sender and on the target)
# - LocY (score dummy) (On the sender and on the target)
# - LocZ (score dummy) (On the sender and on the target)
# - ShooterId (On the Target)
# - TargetId (On the sender)

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

#Note: If there is no entity with a ShooterId equal to the sender's TargetId, the given vector will be wrong !


#Calcule un vecteur vers l'entité ayant l'id stocké dans le TargetId de l'executant
scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] ShooterId -= @s TargetId

#Passe le résultat de Loc (Executant) - Loc (Cible) sur Vector (Executant)
scoreboard players operation @s VectorX = @e[score_ShooterId_min=0,score_ShooterId=0] LocX
scoreboard players operation @s VectorY = @e[score_ShooterId_min=0,score_ShooterId=0] LocY
scoreboard players operation @s VectorZ = @e[score_ShooterId_min=0,score_ShooterId=0] LocZ
scoreboard players operation @s VectorX -= @s LocX
scoreboard players operation @s VectorY -= @s LocY
scoreboard players operation @s VectorZ -= @s LocZ

function Gunivers-Lib:Entity/Calcul/NormalizeVector

scoreboard players operation @e[tag=!Self] ShooterId += @s TargetId
scoreboard players tag @s remove Self