
# NAME: Durability Modifier
# PATH: gunivers-lib:dev/User/Syl2010/DurabilityModifier/apply_damage

# AUTHOR: Syl2010

# VERSION: 1.0
# MINECRAFT: 1.13.1

# REQUIEREMENTS:
# - gunivers-lib:dev/User/Syl2010/DurabilityModifier/fixs/fix_missing_tag (MCfunction)
# - gunivers-lib:dev/User/Syl2010/DurabilityModifier/fixs/fix_break (MCfunction)
# - gunivers-lib:utils/import/vars (MCfunction)

# INPUT:
# - dm_add_damage (score dummy)
# - item endommageable tenu en main (item)

# OUTPUT:
# - SelectedItem.tag.Damage (NBT)

# NOTE: 
# Ajoute à l'item tenu en main par le joueur la quantité de dégat indiqué dans le score `dm_add_damage` de ce joueur 
# (le score est remis à 0 après son traitement)

# CODE:
#____________________________________________________________________________________________________

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run function gunivers-lib:dev/User/Syl2010/DurabilityModifier/fixs/fix_missing_tag

execute store result score @s var5 run data get entity @s SelectedItem.tag.Damage
scoreboard players operation @s var5 += @s dm_add_damage
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s var5

scoreboard players reset @s var5
execute at @s run function gunivers-lib:dev/User/Syl2010/DurabilityModifier/fixs/fix_break
scoreboard players set @s dm_add_damage 0
