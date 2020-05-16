#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/view/has_in_front_ata
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

tag @s remove Glib_HasInFront

#Génère des entités devant et sur les cotés de la tête de l'entité executant la fonction
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^ ^0.001 {Tags:["Glib","Glib_HasInFront_Tmp","Glib_Front"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^0.001 ^ ^ {Tags:["Glib","Glib_HasInFront_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^-0.001 ^ ^ {Tags:["Glib","Glib_HasInFront_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^0.001 ^ {Tags:["Glib","Glib_HasInFront_Tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^-0.001 ^ {Tags:["Glib","Glib_HasInFront_Tmp"]}

# Séléctionne l'entité la plus proche de la cible. Si cette entité est celle qui se trouve devant la tête de l'entité executante, c'est que cette dernière regarde vers la cible
execute as @e[tag=Glib_HasInFront_Tmp,limit=1,sort=nearest] run tag @s add Selected
execute if entity @e[tag=Glib_HasInFront_Tmp,tag=Selected,tag=Glib_Front] run tag @s add Glib_HasInFront

kill @e[tag=Glib_HasInFront_Tmp]
