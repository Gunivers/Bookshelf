
# SYSTEME POS_DIST
# Calcul de la distance en x y z entre le @s et le RS_Centre
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add id dummy
scoreboard objectives add id2 dummy
scoreboard objectives add x_dist dummy
scoreboard objectives add y_dist dummy
scoreboard objectives add z_dist dummy
scoreboard objectives add xM_dist dummy
scoreboard objectives add yM_dist dummy
scoreboard objectives add zM_dist dummy
scoreboard objectives add Constant dummy

scoreboard players set -1 Constant -1

# ---------------------------------------------------------------------------------------

execute @e[name=RS_Centre] ~ ~ ~ /scoreboard players operation @e[name=RS_Centre,c=1,r=1] id2 = @e[name=RS_Centre,c=1,r=1] id
execute @s ~ ~ ~ scoreboard players operation @e[name=RS_Centre,r=30] id2 -= @s id
scoreboard players tag @e[name=RS_Centre,score_id2_min=0,score_id2=0] add RS_Select
# selector:    @e[tag=RS_Select]      --->      ArmorStand "Cible"

effect @e[tag=RS_Select] minecraft:glowing 1 1 true

# ---------------------------------------------------------------------------------------

scoreboard players operation @s x_dist = @s x
scoreboard players operation @s y_dist = @s y
scoreboard players operation @s z_dist = @s z

scoreboard players operation @s x_dist -= @e[tag=RS_Select] x
scoreboard players operation @s y_dist -= @e[tag=RS_Select] y
scoreboard players operation @s z_dist -= @e[tag=RS_Select] z

scoreboard players operation @s x_dist *= 1000 Constant
scoreboard players operation @s y_dist *= 1000 Constant
scoreboard players operation @s z_dist *= 1000 Constant

scoreboard players operation @s xM_dist = @s xM
scoreboard players operation @s yM_dist = @s yM
scoreboard players operation @s zM_dist = @s zM

scoreboard players remove @s[score_x=0] xM_dist 1000
scoreboard players operation @s[score_x=0] xM_dist *= -1 Constant

scoreboard players remove @s[score_z=0] zM_dist 1000
scoreboard players operation @s[score_z=0] zM_dist *= -1 Constant

scoreboard players operation @s xM_dist -= @e[tag=RS_Select] xM
scoreboard players operation @s yM_dist -= @e[tag=RS_Select] yM
scoreboard players operation @s zM_dist -= @e[tag=RS_Select] zM

scoreboard players operation @s x_dist += @s xM_dist
scoreboard players operation @s y_dist += @s yM_dist
scoreboard players operation @s z_dist += @s zM_dist

# ---------------------------------------------------------------------------------------

scoreboard players tag @s[tag=xPzP] remove xPzP
scoreboard players tag @s[tag=xNzP] remove xNzP
scoreboard players tag @s[tag=xNzN] remove xNzN
scoreboard players tag @s[tag=xPzN] remove xPzN

scoreboard players tag @s[score_x_dist_min=1,score_z_dist_min=0] add xPzP
scoreboard players tag @s[score_x_dist=0,score_z_dist_min=0] add xNzP
scoreboard players tag @s[score_x_dist=0,score_z_dist=-1] add xNzN
scoreboard players tag @s[score_x_dist_min=-1,score_z_dist=-1] add xPzN

# ---  EN FIN DE FONCTION -----------------------------------------------------

scoreboard players tag @e[name=RS_Centre] remove RS_Select








