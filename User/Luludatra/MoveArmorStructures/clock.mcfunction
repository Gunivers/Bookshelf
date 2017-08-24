
# SYSTEME CLOCK
# Fonction principale de l'enchainement des autres fonctions.
# by Luludatra

# -------------------------------------------------------------

scoreboard objectives add step dummy

# -------------------------------------------------------------

execute @e[name=RS_Centre] ~ ~ ~ /execute @e[name=RS_Spawn] ~ ~ ~ /say Pas de spawn si déjà un autre centre
execute @e[name=RS_Centre] ~ ~ ~ /kill @e[name=RS_Spawn]

execute @e[name=RS_Spawn] ~ ~ ~ /summon Armor_Stand ~ ~ ~ {CustomName:"RS_Centre",CustomNameVisible:1b,Small:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:gold_block,Damage:0s,Count:1b}]}
execute @e[name=RS_Spawn] ~ ~ ~ /scoreboard players set @e[name=RS_Centre,c=1] id 9
execute @e[name=RS_Spawn] ~ ~ ~ /scoreboard players set @e[name=RS_Centre,c=1] step 0
tp @e[name=RS_Spawn] ~ ~-300 ~
kill @e[name=RS_Spawn]

# -------------------------------------------------------------

execute @e[name=RS_Centre,score_step_min=0,score_step=0] ~ ~ ~ /tellraw @p ["",{"text":"\n--- ","color":"dark_gray"},{"text":"Rotation Structure","color":"gray"},{"text":" ---------------------------------\n","color":"dark_gray"},{"text":"\n    Approchez-vous de la structure dont vous voulez faire","color":"gray"},{"text":"\n    une rotation. Quand celle-ci est en surbrillance, appuyez","color":"gray"},{"text":"\n    sur ","color":"gray"},{"text":"suivant","color":"gray","italic":true},{"text":".","color":"gray","italic":false},{"text":"\n\n       < ","color":"dark_gray"},{"text":"annuler","color":"gray"},{"text":"]","color":"dark_gray"},{"text":"   -------------------------   ","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"suivant","color":"gray"},{"text":" >","color":"dark_gray"}]


scoreboard players set @e[name=RS_Centre,score_step_min=0,score_step=0] step 1
execute @e[name=RS_Centre,score_step_min=1,score_step=1] ~ ~ ~ /function RS:select



