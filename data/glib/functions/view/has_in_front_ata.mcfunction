#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:view/has_in_front_ata
# Documentation: https://glib-core.readthedocs.io//entity#view
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @s remove glib.hasInFront

#Génère des entités devant et sur les cotés de la tête de l'entité executant la fonction
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^ ^0.001 {Tags:["glib","glib.hasInFront.tmp","glib_Front"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^0.001 ^ ^ {Tags:["glib","glib.hasInFront.tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^-0.001 ^ ^ {Tags:["glib","glib.hasInFront.tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^0.001 ^ {Tags:["glib","glib.hasInFront.tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon area_effect_cloud ^ ^-0.001 ^ {Tags:["glib","glib.hasInFront.tmp"]}

# Séléctionne l'entité la plus proche de la cible. Si cette entité est celle qui se trouve devant la tête de l'entité executante, c'est que cette dernière regarde vers la cible
execute as @e[tag=glib.hasInFront.tmp,limit=1,sort=nearest] run tag @s add Selected
execute if entity @e[tag=glib.hasInFront.tmp,tag=Selected,tag=glib_Front] run tag @s add glib.hasInFront

kill @e[tag=glib.hasInFront.tmp]
