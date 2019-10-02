
# SYSTEME SELECTION/SELECT-ALL
# Fonction qui selectionne toutes les ArmorStands
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

execute @e[name=RS_Centre] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,name=!RS_Centre,r=20] add RS

