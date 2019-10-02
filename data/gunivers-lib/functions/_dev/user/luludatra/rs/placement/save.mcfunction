
# SYSTEME PLACEMENT/SAVE
# Fonction qui sauvegegarde le nouvelle emplacement des ArmorStands
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

scoreboard players teams empty RS
scoreboard players tag @e[] remove RS
effect @e[] clear

tellraw @p ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

kill @e[name=RS_Centre]







