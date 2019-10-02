
# SYSTEME POSITION A ANGLE
# Trouver l'angle d'un triangle rectangle formé des coordonnées entre entitées et centre
# by Luludatra

# ---------------------------------------------------------------------------------------

execute @s[tag=RS] ~ ~ ~ /function RS:pos
execute @e[name=RS_Centre] ~ ~ ~ /function RS:pos
execute @s[tag=RS] ~ ~ ~ /function RS:pos_dist
execute @s[tag=RS] ~ ~ ~ /function RS:hypotenuse
execute @s[tag=RS] ~ ~ ~ /function RS:angle

# Angle stocké sur le score AngleA





