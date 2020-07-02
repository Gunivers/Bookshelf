# NAME: Get Variable - Child
# PATH: glib_child:memory/get_rec

# AUTHOR: theogiraudet

# CHILD OF: glib:memory/get

# CODE:
execute store success score @s glib.var0 run data modify entity @s ArmorItems[0].tag.Buffer2[0].glib.id set from entity @s ArmorItems[0].tag.Buffer1
execute if score @s glib.var0 matches 0 run data modify entity @s ArmorItems[0].tag.Output set from entity @s ArmorItems[0].tag.Buffer2[0].Value
execute if score @s glib.var0 matches 1 run data remove entity @s ArmorItems[0].tag.Buffer2[0]
execute if score @s glib.var0 matches 1 run data modify entity @s ArmorItems[0].tag.Buffer1 set from entity @s ArmorItems[0].tag.Buffer3
execute if score @s glib.var0 matches 1 if data entity @s ArmorItems[0].tag.Buffer2[0] run function glib_child:core/memory/get_rec