
# SYSTEME SELECT
# Fonction qui sélectionne le groupe d'ArmorStand le plus proche du RS_Centre
# by Luludatra

# -------------------------------------------------------------

execute @e[name=RS_Centre] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=!RS_Centre,c=1] add RS_Groupe

execute @e[type=Armor_Stand,tag=RS_Groupe] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=!RS_Centre,r=2] add RS_Groupe

effect @e[tag=RS_Groupe] minecraft:glowing 1 255 true