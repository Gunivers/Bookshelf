# NAME: Damage Applyer
# PATH: glib:utils/durability_modifier/apply_damage

# AUTHOR: Syl2010

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - dmAddDamage (score dummy)
# - Damaging item hold in hand (item)

# OUTPUT:
# - SelectedItem.tag.Damage (NBT)

# NOTE:
# Add or remove the damage value contains into dmAddDamage score to the the item hold in the entity source hand

# PARAMETERS

#__________________________________________________
# INIT:
scoreboard objectives add glib.var4 dummy
scoreboard objectives add dmAddDamage dummy
scoreboard players set @s glib.var4 0

# CODE:

scoreboard objectives add dmAddDamage dummy
scoreboard players set @s glib.var4 0

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run function glib_child:core/utils/durability_modifier/fix_missing_tag

execute store result score @s glib.var4 run data get entity @s SelectedItem.tag.Damage
scoreboard players operation @s glib.var4 += @s dmAddDamage
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s glib.var4

scoreboard players reset @s glib.var4
execute at @s run function glib_child:core/utils/durability_modifier/fix_break
scoreboard players set @s dmAddDamage 0
