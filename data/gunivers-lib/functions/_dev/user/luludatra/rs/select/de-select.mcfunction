
# SYSTEME SELECTION/DE-SELECT
# Switch entre sélectionné et déselectionné
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

scoreboard players tag @e[type=Armor_Stand,score_list_min=1,score_list=1,tag=!RS] add RS_2

scoreboard players tag @e[type=Armor_Stand,score_list_min=1,score_list=1,tag=RS] remove RS

scoreboard players tag @e[tag=RS_2] add RS
scoreboard players tag @e[tag=RS_2] remove RS_2