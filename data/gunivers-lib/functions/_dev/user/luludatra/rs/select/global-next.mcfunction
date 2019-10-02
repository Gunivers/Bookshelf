
# SYSTEME SELECT/CANCEL
# Fonction qui gère la suite d'action après la sélection des ArmorStands.
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

scoreboard players set @e[name=RS_Centre,score_step_min=1,score_step=1] step 2

scoreboard players set @e[type=Armor_Stand,score_list_min=1] list 0

execute @e[name=RS_Centre,score_step_min=2,score_step=2] ~ ~ ~ /function RS:tellraw/tellraw

execute @e[tag=RS] ~ ~ ~ /function RS:PosToAngle


