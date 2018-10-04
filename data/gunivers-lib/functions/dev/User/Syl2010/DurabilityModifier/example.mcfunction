
# NAME: Durability Modifier - example
# PATH: gunivers-lib:dev/User/Syl2010/DurabilityModifier/example

# AUTHOR: Syl2010

# VERSION: 1.0
# MINECRAFT: 1.13.1

# REQUIEREMENTS:
# - gunivers-lib:dev/User/Syl2010/DurabilityModifier/apply_damage (MCfunction)
# - gunivers-lib:dev/User/Syl2010/DurabilityModifier/calcul_with_unbreaking (MCfunction)

# NOTE: Example d'utilisation du système (en développement / non testé)

# CONFIGURATION:


# CODE:
#____________________________________________________________________________________________________

# init

scoreboard objectives add dm_add_damage dummy
scoreboard objectives add dm_trig_example dummy
tellraw @s [{"text":"[Durability Modifier Example]","color":"green","bold":true},{"text":"Cliquer ici pour endommager l'item tenu en main","color":"light_green"}]

# loop

execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword"},scores={dm_trig_example=1..}] run function gunivers-lib:dev/User/Syl2010/DurabilityModifier/calcul_with_unbreaking
scoreboard players reset @a[scores={dm_trig_example=1..]] dm_trig_example
execute as @s[scores={dm_add_damage=1..}] run function gunivers-lib:dev/User/Syl2010/DurabilityModifier/apply_damage