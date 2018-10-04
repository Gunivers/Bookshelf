
# SYSTEME HYPOTENUSE
# Trouver l'hypoténuse d'un triangle rectangle
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add hypo dummy
scoreboard objectives add x_hypo dummy
scoreboard objectives add z_hypo dummy

scoreboard players add @s hypo 0

# ---------------------------------------------------------------------------------------

scoreboard players operation @s x_hypo = @s x_dist
scoreboard players operation @s z_hypo = @s z_dist

scoreboard players operation @s x_hypo *= @s x_hypo
scoreboard players operation @s z_hypo *= @s z_hypo

scoreboard players operation @s hypo = @s x_hypo
scoreboard players operation @s hypo += @s z_hypo

# Racine carré sur Operation
scoreboard players operation @s Operation = @s hypo
execute @s ~ ~ ~ /function RS:sqrt
scoreboard players operation @s hypo = @s Operation
