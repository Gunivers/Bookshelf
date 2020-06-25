# NAME: Unbreaking Damage Calculator Loop
# PATH: glib_child:utils/durability_modifier/unbreaking_calc_loop

# AUTHOR: Syl2010

# CHILD OF: glib:utils/durability_modifier/unbreaking_calc

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - Damaging item hold in hand (item)
# - dmAddDamage (score dummy)

# OUTPUT:
# - glib.var4 (score dummy)

# NOTE:
# Transfer 1 dmAddDamage to glib.var4 with the unreabreaking's enchantement random

# CODE:

function glib:math/random
scoreboard players operation @s glib.res0 %= 100 glib.const
scoreboard players add @s glib.res0 1

execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] run scoreboard players add @s glib.var4 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:unbreaking"}]}}}] if score @s glib.res0 matches ..50 run scoreboard players add @s glib.var4 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:unbreaking"}]}}}] if score @s glib.res0 matches ..33 run scoreboard players add @s glib.var4 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:unbreaking"}]}}}] if score @s glib.res0 matches ..25 run scoreboard players add @s glib.var4 1

scoreboard players remove @s dmAddDamage 1
execute if score @s dmAddDamage matches 1.. run function glib_child:core/utils/durability_modifier/unbreaking_calc_loop
