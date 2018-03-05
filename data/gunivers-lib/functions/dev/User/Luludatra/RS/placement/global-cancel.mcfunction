
# SYSTEME PLACEMENT/CANCEL
# Fonction qui retourne au menu de sélection en n'enregistrant pas les modifications de placements temporaire.
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

execute @e[tag=RS] ~ ~ ~ /function RS:placement/reset_pla
execute @e[name=RS_Centre] ~ ~ ~ /function RS:placement/reset_pla

scoreboard players set @e[name=RS_Centre,score_step_min=2,score_step=2] step 1
scoreboard players set @e[name=RS_Centre] RS_angle 0

execute @e[name=RS_Centre,score_step_min=1,score_step=1] ~ ~ ~ /function RS:tellraw/tellraw


