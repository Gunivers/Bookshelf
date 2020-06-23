# NAME: Unbreaking Damage Calculator
# PATH: glib:utils/durability_modifier/unbreaking_calc

# AUTHOR: Syl2010

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - Enchantable item hold in hand (item)
# - dmAddDamage (score dummy)

# OUTPUT:
# - dmAddDamage (score dummy)

# NOTE:
# Recalculate dmAddDamage with the unreabreaking's enchantement calculation

# PARAMETERS

#__________________________________________________
# INIT:
scoreboard objectives add glib.var5 dummy
scoreboard objectives add dmAddDamage dummy
scoreboard players add @s dmAddDamage 0
scoreboard players set @s glib.var5 0

# CODE:

execute if score @s dmAddDamage matches 1.. run function glib:core/utils/durability_modifier/child/unbreaking_calc_loop

scoreboard players operation @s dmAddDamage = @s glib.var5
scoreboard players reset @s glib.var5
