
# SYSTEME ANGLE
# Trouver l'angle d'un triangle rectangle
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add sinA dummy
scoreboard objectives add cosA dummy
scoreboard objectives add x_dist_entier dummy
scoreboard objectives add z_dist_entier dummy
scoreboard objectives add Constant dummy
scoreboard objectives add angle dummy

scoreboard players set -1 Constant -1
scoreboard players set 10000 Constant 10000

# ---------------------------------------------------------------------------------------

scoreboard players operation @s x_dist_entier = @s x_dist
scoreboard players operation @s[score_x_dist_entier=-1] x_dist_entier *= -1 Constant
scoreboard players operation @s x_dist_entier *= 10000 Constant

scoreboard players operation @s z_dist_entier = @s z_dist
scoreboard players operation @s[score_z_dist_entier=-1] z_dist_entier *= -1 Constant
scoreboard players operation @s z_dist_entier *= 10000 Constant

# --- SINUS A ---

scoreboard players operation @s sinA = @s x_dist_entier
scoreboard players operation @s sinA /= @s hypo

# --- COSINUS A ---

scoreboard players operation @s cosA = @s z_dist_entier
scoreboard players operation @s cosA /= @s hypo

# ---------------------------------------------------------------------------------------

# Définition de l'arcsin

execute @s[tag=RS] ~ ~ ~ /function RS:arcsin

# ---------------------------------------------------------------------------------------

# Convertir les 4 fois 90° en un angle de 360°

scoreboard players operation @s angle = @s angleA

# xN zP
# xN zN
scoreboard players remove @s[tag=xNzN] angle 90
scoreboard players operation @s[tag=xNzN] angle *= -1 Constant
scoreboard players add @s[tag=xNzN] angle 90
# xP zN
scoreboard players add @s[tag=xPzN] angle 180
# xP zP
scoreboard players remove @s[tag=xPzP] angle 90
scoreboard players operation @s[tag=xPzP] angle *= -1 Constant
scoreboard players add @s[tag=xPzP] angle 270

#exception
execute @s[tag=xPzN] ~ ~ ~ /execute @s[tag=xNzN] ~ ~ ~ /scoreboard players set @s angle 180









