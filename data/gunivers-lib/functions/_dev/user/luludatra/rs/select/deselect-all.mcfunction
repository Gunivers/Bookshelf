
# SYSTEME SELECTION/UNSELECT-ALL
# Fonction qui déselectionne toutes les ArmorStands
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

scoreboard players tag @e[type=Armor_Stand,tag=RS] remove RS

