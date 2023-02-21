# NAME: Get Variable - Child
# PATH: bs_child:memory/get_rec

# AUTHOR: theogiraudet

# CHILD OF: bs.memory:get

# CODE:
execute store success score @s bs.in.0 run data modify entity @s ArmorItems[0].tag.Buffer2[0].bs.id set from entity @s ArmorItems[0].tag.Buffer1
execute if score @s bs.in.0 matches 0 run data modify entity @s ArmorItems[0].tag.Output set from entity @s ArmorItems[0].tag.Buffer2[0].Value
execute if score @s bs.in.0 matches 1 run data remove entity @s ArmorItems[0].tag.Buffer2[0]
execute if score @s bs.in.0 matches 1 run data modify entity @s ArmorItems[0].tag.Buffer1 set from entity @s ArmorItems[0].tag.Buffer3
execute if score @s bs.in.0 matches 1 if data entity @s ArmorItems[0].tag.Buffer2[0] run function bs_child:default/core/memory/get_rec