# NAME: Damage Applyer
# PATH: glib:durability_modifier/apply_damage

# AUTHOR: Syl2010

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - glib.dmAddDamage (score dummy)
# - Damaging item hold in hand (item)

# OUTPUT:
# - SelectedItem.tag.Damage (NBT)

# NOTE:
# Add or remove the damage value contains into glib.dmAddDamage score to the the item hold in the entity source hand

# PARAMETERS

#__________________________________________________
# INIT:

scoreboard objectives add glib.dmAddDamage dummy [{"text":"GLib ","color":"gold"},{"text":"dmAddDamage","color":"dark_gray"}]

#__________________________________________________
# CODE:

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run function glib_child:default/core/durability_modifier/fix_missing_tag

execute store result score @s glib.var4 run data get entity @s SelectedItem.tag.Damage
scoreboard players operation @s glib.var4 += @s glib.dmAddDamage
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s glib.var4

scoreboard players reset @s glib.var4
execute at @s run function glib_child:default/core/durability_modifier/fix_break
scoreboard players set @s glib.dmAddDamage 0
