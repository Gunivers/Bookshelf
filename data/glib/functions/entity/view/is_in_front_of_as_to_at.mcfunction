#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/view/is_in_front_of_as_to_at
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#view
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @s remove Glib_InFrontOf

#Génère des entités devant et sur les cotés de la tête de l'entité executant la fonction
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^ ^0.001 {Tags:["Glib","Glib_InFrontOf_Tmp","Glib_Front"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^0.001 ^ ^ {Tags:["Glib","Glib_InFrontOf_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^-0.001 ^ ^ {Tags:["Glib","Glib_InFrontOf_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^0.001 ^ {Tags:["Glib","Glib_InFrontOf_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^-0.001 ^ {Tags:["Glib","Glib_InFrontOf_Tmp"]}

# Séléctionne l'entité la plus proche de la cible. Si cette entité est celle qui se trouve devant la tête de l'entité executante, c'est que cette dernière regarde vers la cible
execute as @e[tag=Glib_InFrontOf_Tmp,limit=1,sort=nearest] run tag @s add Selected
execute if entity @e[tag=Glib_InFrontOf_Tmp,tag=Selected,tag=Glib_Front] run tag @s add Glib_InFrontOf

kill @e[tag=Glib_InFrontOf_Tmp]
