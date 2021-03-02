# NAME: Unbreaking Damage Calculator
# PATH: glib:durability_modifier/unbreaking_calc

# AUTHOR: Syl2010

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - Enchantable item hold in hand (item)
# - glib.dmAddDamage (score dummy)

# OUTPUT:
# - glib.dmAddDamage (score dummy)

# NOTE:
# Recalculate glib.dmAddDamage with the unreabreaking's enchantement calculation

# PARAMETERS

#__________________________________________________
# INIT:

scoreboard objectives add glib.dmAddDamage dummy [{"text":"GLib ","color":"gold"},{"text":"dmAddDamage","color":"dark_gray"}]
scoreboard players add @s glib.dmAddDamage 0
scoreboard players set @s glib.var4 0

# CODE:

execute if score @s glib.dmAddDamage matches 1.. run function glib_child:default/core/durability_modifier/unbreaking_calc_loop

scoreboard players operation @s glib.dmAddDamage = @s glib.var4
scoreboard players reset @s glib.var4
