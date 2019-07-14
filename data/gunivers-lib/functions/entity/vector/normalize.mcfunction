# Calcul Vectors Normalizer

# @Author: Leirof

# Version: 2.0
# Minecraft Version: 1.13+

# Input values:
# - VectorX (score dummy)
# - Vectory (score dummy)
# - Vectorz (score dummy)

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# INIT
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

# CONFIG:
scoreboard players set @s[tag=!Glib_Override_Config] VectorSpeed 1000

# Note: Cette fonction permet de redefinir des vecteurs de mouvement correctes à partir de 3 vecteurs basiques (coordonnées relatvies par exemple)

scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var1 += @s VectorY
scoreboard players operation @s Var1 += @s VectorZ

scoreboard players operation @s Var2 = @s VectorSpeed
scoreboard players operation @s Var2 *= @s VectorSpeed
scoreboard players operation @s Var2 /= @s Var1

scoreboard players operation @s VectorX *= @s Var2
scoreboard players operation @s VectorY *= @s Var2
scoreboard players operation @s VectorZ *= @s Var2

scoreboard players operation @s VectorX /= @s VectorSpeed
scoreboard players operation @s VectorY /= @s VectorSpeed
scoreboard players operation @s VectorZ /= @s VectorSpeed