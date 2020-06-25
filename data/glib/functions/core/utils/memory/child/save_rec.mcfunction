# NAME: Save Variable in Memory - Child
# PATH: glib:utils/memory/zzz_child/save_rec

# AUTHOR: theogiraudet

# CHILD OF: glib:utils/memory/save_in_memory

# CODE:

#Compare
data modify entity @s ArmorItems[0].tag.Buffer4 set from entity @s ArmorItems[0].tag.Buffer1
execute store success score @s glib.var0 run data modify entity @s ArmorItems[0].tag.Buffer4 set from entity @s ArmorItems[0].tag.Memory[0].glib.id

#If not equal
execute if score @s glib.var0 matches 1 run data modify entity @s ArmorItems[0].tag.Buffer3 append from entity @s ArmorItems[0].tag.Memory[0]
execute if score @s glib.var0 matches 1 run data remove entity @s ArmorItems[0].tag.Memory[0]
execute if score @s glib.var0 matches 1 if data entity @s ArmorItems[0].tag.Memory[0] run function glib:core/utils/memory/zzz_child/save_rec

#If equal, we update the value of the pair
execute if score @s glib.var0 matches 0 run data modify entity @s ArmorItems[0].tag.Memory[0].Value set from entity @s ArmorItems[0].tag.Buffer2