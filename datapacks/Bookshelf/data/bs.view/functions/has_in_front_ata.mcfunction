#__________________________________________________
# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.13)
# Last verification: 11/04/2023 (1.19.4)
# Last modification: 11/04/2023 (1.19.4)

# Original path : bs.view:chas_in_front_ata
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#has-in-front-as-to-at
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

tag @s remove bs.view.HasInFront

#Génère des entités devant et sur les cotés de la tête de l'entité executant la fonction
execute at @s positioned ~ ~1.7 ~ run summon marker ^ ^ ^0.001 {Tags:["bs","bs.view.HasInFront.tmp","bs_Front"]}
execute at @s positioned ~ ~1.7 ~ run summon marker ^0.001 ^ ^ {Tags:["bs","bs.view.HasInFront.tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon marker ^-0.001 ^ ^ {Tags:["bs","bs.view.HasInFront.tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon marker ^ ^0.001 ^ {Tags:["bs","bs.view.HasInFront.tmp"]}
execute at @s positioned ~ ~1.7 ~ run summon marker ^ ^-0.001 ^ {Tags:["bs","bs.view.HasInFront.tmp"]}

# Séléctionne l'entité la plus proche de la cible. Si cette entité est celle qui se trouve devant la tête de l'entité executante, c'est que cette dernière regarde vers la cible
execute as @e[tag=bs.view.HasInFront.tmp,limit=1,sort=nearest] run tag @s add Selected
execute if entity @e[tag=bs.view.HasInFront.tmp,tag=Selected,tag=bs_Front] run tag @s add bs.view.HasInFront

execute as @e[tag=bs.view.HasInFront.tmp] run function bs.core:entity/safe_kill

### DEBUG
tellraw @a[tag=bs.debug.view.has_in_front_ata] [{"text":"> Bookshelf | ","color":"dark_aqua"},{"text":"Record from bs.view:has_in_front_ata","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.view.has_in_front_ata"},"hoverEvent":{"action":"show_text","contents":"Hide this debug"}}]
execute if entity @s[tag=bs.view.HasInFront] run tellraw @a[tag=bs.debug.view.has_in_front_ata] [{"text":" Result: In front of ","color":"gray"},{"text":"✔","color":"green"}]
execute unless entity @s[tag=bs.view.HasInFront] run tellraw @a[tag=bs.debug.view.has_in_front_ata] [{"text":" Result: Not in front of ","color":"gray"},{"text":"❌","color":"red"}]
tellraw @a[tag=bs.debug.view.has_in_front_ata] [{"text":"<","color":"dark_aqua"}]
###
