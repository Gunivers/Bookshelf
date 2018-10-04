
# SYSTEME SELECTION/NEXT
# Fonction qui sélectionne l'armorstand la plus proche du joueur.
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

execute @e[name=RS_Centre,score_step_min=1,score_step=1] ~ ~ ~ /scoreboard players add @e[type=Armor_Stand,name=!RS_Centre] list 0

execute @e[name=RS_Centre,score_step_min=1,score_step=1] ~ ~ ~ /execute @p ~ ~ ~ /execute @e[type=Armor_Stand,score_list_min=0,score_list=0,c=1,name=!RS_Centre] ~ ~ ~ /scoreboard players add @e[type=Armor_Stand,score_list_min=1,name=!RS_Centre] list 1
execute @e[name=RS_Centre,score_step_min=1,score_step=1] ~ ~ ~ /execute @p ~ ~ ~ /scoreboard players add @e[type=Armor_Stand,score_list_min=0,score_list=0,c=1,name=!RS_Centre] list 1




