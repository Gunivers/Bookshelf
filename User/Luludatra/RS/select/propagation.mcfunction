
# SYSTEME SELECTION/PROPAGATION
# Fonction qui sélectionne toutes les ArmorStands dans un rayon de 2 autour de toutes les ArmorStands sélectionnées.
# by Luludatra

# -------------------------------------------------------------


execute @e[tag=RS] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,tag=!RS,r=2,name=!RS_Centre] add RS
execute @e[tag=RS] ~ ~ ~ /execute @e[type=Armor_Stand,tag=!RS,r=2,c=1,name=!RS_Centre] ~ ~ ~ /function RS:select/propagation