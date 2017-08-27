
# SYSTEME PLACEMENT/NEW_ANGLE
# Fonction qui change l'angle de toutes les ArmorStand sélectionnés.
# by Luludatra

# -------------------------------------------------------------

scoreboard players operation @e[name=RS_Centre] RS_angle += @e[name=RS_Centre] tellraw_angle
scoreboard players set @e[name=RS_Centre] tellraw_angle 0

scoreboard players add @e[score_RS_angle=360] RS_angle 360

execute @e[tag=RS] ~ ~ ~ /function RS:new_angle
execute @e[tag=RS,type=!Player] ~ ~ ~ /function RS:placement



