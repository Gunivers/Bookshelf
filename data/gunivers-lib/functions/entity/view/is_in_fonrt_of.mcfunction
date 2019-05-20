# NAME: Is in front of
# PATH: gunivers-lib:entity/view/is_in_front_of

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13+

# INPUT
# none

# OUTPUT
# - Glib_InFrontOf (tag)

# NOTE: This system was made to a "normal" player with FOV set to 90

# CODE:
#____________________________________________________________________________________________________

tag @s remove Glib_InFrontOf

#Génère des entités devant et sur les cotés de la tête de l'entité executant la fonction
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^ ^0.001 {Tags:["Glib_InFrontOf_Tmp","Glib_Front"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^0.001 ^ ^ {Tags:["Glib_InFrontOf_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^-0.001 ^ ^ {Tags:["Glib_InFrontOf_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^0.001 ^ {Tags:["Glib_InFrontOf_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^-0.001 ^ {Tags:["Glib_InFrontOf_Tmp"]}

# Séléctionne l'entité la plus proche de la cible. Si cette entité est celle qui se trouve devant la tête de l'entité executante, c'est que cette dernière regarde vers la cible
execute as @e[tag=Glib_InFrontOf_Tmp,limit=1,sort=nearest] run tag @s add Selected
execute if entity @e[tag=Glib_InFrontOf_Tmp,tag=Selected,tag=Glib_Front] run tag @s add Glib_InFrontOf

kill @e[tag=Glib_InFrontOf_Tmp]