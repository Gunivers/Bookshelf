# NAME: Unbreaking Damage Calculator
# PATH: gunivers-lib:utils/durability_modifier/unbreaking_calc

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

# INIT:
scoreboard objectives add Var5 dummy
scoreboard objectives add dmAddDamage dummy
scoreboard players add @s dmAddDamage 0
scoreboard players set @s Var5 0

# CODE:

execute if score @s dmAddDamage matches 1.. run function gunivers-lib:utils/durability_modifier/child/unbreaking_calc_loop

scoreboard players operation @s dmAddDamage = @s Var5
scoreboard players reset @s Var5
