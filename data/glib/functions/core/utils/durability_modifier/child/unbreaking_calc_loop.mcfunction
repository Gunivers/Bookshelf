# NAME: Unbreaking Damage Calculator Loop
# PATH: glib:utils/durability_modifier/child/unbreaking_calc_loop

# AUTHOR: Syl2010

# CHILD OF: glib:utils/durability_modifier/unbreaking_calc

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - Damaging item hold in hand (item)
# - dmAddDamage (score dummy)

# OUTPUT:
# - glib.var5 (score dummy)

# NOTE:
# Transfer 1 dmAddDamage to glib.var5 with the unreabreaking's enchantement random

# CODE:

function glib:math/random
scoreboard players operation @s glib.res %= 100 glib.const
scoreboard players add @s glib.res 1

execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] run scoreboard players add @s glib.var5 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:unbreaking"}]}}}] if score @s glib.res matches ..50 run scoreboard players add @s glib.var5 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:unbreaking"}]}}}] if score @s glib.res matches ..33 run scoreboard players add @s glib.var5 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:unbreaking"}]}}}] if score @s glib.res matches ..25 run scoreboard players add @s glib.var5 1

scoreboard players remove @s dmAddDamage 1
execute if score @s dmAddDamage matches 1.. run function glib:core/utils/durability_modifier/child/unbreaking_calc_loop
