
# SYSTEME PLACEMENT
# Placer les RS en fonction de leurs score de placements et de l'orientation de leurs centres.
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add pla_vision dummy

# ---------------------------------------------------------------------------------------

# TP GLOBAL SUR RS_SELECT

execute @e[name=RS_Centre] ~ ~ ~ /scoreboard players operation @e[name=RS_Centre,c=1,r=1] id2 = @e[name=RS_Centre,c=1,r=1] id
execute @s[tag=RS] ~ ~ ~ scoreboard players operation @e[name=RS_Centre,r=30] id2 -= @s id
scoreboard players tag @e[name=RS_Centre,score_id2_min=0,score_id2=0] add RS_Select
effect @e[tag=RS_Select] minecraft:glowing 1 1 true
# selector:    @e[tag=RS_Select]      --->      ArmorStand "Cible"

tp @s[tag=RS] @e[tag=RS_Select]
scoreboard players operation @s pla_vision = @e[tag=RS_Select] RS_angle

# FIN DE TP GLOBAL
scoreboard players tag @e[name=RS_Centre] remove RS_Select

# Placement
execute @s[tag=RS] ~ ~ ~ /function RS:pla_x
execute @s[tag=RS] ~ ~ ~ /function RS:pla_y
execute @s[tag=RS] ~ ~ ~ /function RS:pla_z
execute @s[tag=RS] ~ ~ ~ /function RS:pla_vision