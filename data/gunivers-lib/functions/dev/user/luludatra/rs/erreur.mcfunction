
# SYSTEME ERREUR
# Fonction qui gère les erreurs
# by Luludatra

# -------------------------------------------------------------

execute @e[type=Armor_Stand,score_new_angle=-1] ~ ~ ~ /function RS:placement/global-cancel
scoreboard players set @e[type=Armor_Stand,score_new_angle=-1] new_angle 0


