
# SYSTEME NEW_ANGLE
# Changer la position de l'entité en fonction de l'angle nouveau de RS_Centre
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add Operation dummy
scoreboard objectives add Constant dummy
scoreboard objectives add pla_sin dummy
scoreboard objectives add pla_cos dummy
scoreboard objectives add RS_angle dummy
scoreboard objectives add new_angle dummy
scoreboard objectives add angle dummy

scoreboard players set 360 Constant 360
scoreboard players add @e[name=RS_Centre] RS_angle 0

# ---------------------------------------------------------------------------------------

# TROUVER LE NEW_ANGLE SUR RS_SELECT

execute @e[name=RS_Centre] ~ ~ ~ /scoreboard players operation @e[name=RS_Centre,c=1,r=1] id2 = @e[name=RS_Centre,c=1,r=1] id
execute @s[tag=RS] ~ ~ ~ scoreboard players operation @e[name=RS_Centre,r=30] id2 -= @s id
scoreboard players tag @e[name=RS_Centre,score_id2_min=0,score_id2=0] add RS_Select
effect @e[tag=RS_Select] minecraft:glowing 1 1 true
# selector:    @e[tag=RS_Select]      --->      ArmorStand "Cible"

scoreboard players operation @s RS_angle = @e[tag=RS_Select] RS_angle

# FIN DE RS_SELECT
scoreboard players tag @e[name=RS_Centre] remove RS_Select

# ---------------------------------------------------------------------------------------

# Changement de l'angle + modulo pour 360° max

scoreboard players operation @s new_angle = @s angle
scoreboard players operation @s new_angle += @s RS_angle
scoreboard players operation @s new_angle %= 360 Constant

# Fonction Sinus
scoreboard players operation @s Operation = @s new_angle
execute @s[tag=RS] ~ ~ ~ /function RS:sin
scoreboard players operation @s pla_sin = @s Operation
scoreboard players operation @s pla_sin *= @s hypo

# Fonction Cosinus
scoreboard players operation @s Operation = @s new_angle
execute @s[tag=RS] ~ ~ ~ /function RS:cos
scoreboard players operation @s pla_cos = @s Operation
scoreboard players operation @s pla_cos *= @s hypo




