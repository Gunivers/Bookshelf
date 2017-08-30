
# SYSTEME SELECTION/SKIP
# Fonction qui sélectionne l'armorstand la plus proche du joueur.
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

scoreboard players add @e[type=Armor_Stand,name=!RS_Centre] list 0
scoreboard players remove @e[type=Armor_Stand,score_list_min=1,name=!RS_Centre] list 1


