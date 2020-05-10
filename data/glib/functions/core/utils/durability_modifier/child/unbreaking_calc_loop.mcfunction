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
# - Var5 (score dummy)

# NOTE:
# Transfer 1 dmAddDamage to Var5 with the unreabreaking's enchantement random

# CODE:

function glib:math/random
scoreboard players operation @s Res %= 100 Constant
scoreboard players add @s Res 1

execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] run scoreboard players add @s Var5 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:unbreaking"}]}}}] if score @s Res matches ..50 run scoreboard players add @s Var5 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:unbreaking"}]}}}] if score @s Res matches ..33 run scoreboard players add @s Var5 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:unbreaking"}]}}}] if score @s Res matches ..25 run scoreboard players add @s Var5 1

scoreboard players remove @s dmAddDamage 1
execute if score @s dmAddDamage matches 1.. run function glib:core/utils/durability_modifier/child/unbreaking_calc_loop
