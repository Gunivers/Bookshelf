
# NAME: Durability Modifier
# PATH: gunivers-lib:dev/User/Syl2010/DurabilityModifier/calcul_with_unbreaking

# AUTHOR: Syl2010

# VERSION: 1.0
# MINECRAFT: 1.13.1

# REQUIEREMENTS:
# - gunivers-lib:math/random (MCfunction)
# - gunivers-lib:utils/import/constants (MCfunction)

# INPUT:
# - item tenu en main (item)
# - dm_add_damage (score dummy)

# OUTPUT:
# - dm_add_damage (score dummy)

# NOTE: 
# Ajoute 1 au score `dm_add_damage` selon le niveau de l'enchantement "solidité" de l'item tenu en main par le joueur (@s)
# (Les valeurs dans les tests `if score ...` sont les pourcentages de l'enchantement "solidité" récupérés sur le wiki officiel)

# CODE:
#____________________________________________________________________________________________________

function gunivers-lib:math/random
scoreboard players operation @s Res %= 100 Constant
scoreboard players add @s Res 1

execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] run scoreboard players add @s dm_add_damage 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:unbreaking"}]}}}] if score @s Res matches ..50 run scoreboard players add @s dm_add_damage 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:unbreaking"}]}}}] if score @s Res matches ..33 run scoreboard players add @s dm_add_damage 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:unbreaking"}]}}}] if score @s Res matches ..25 run scoreboard players add @s dm_add_damage 1
