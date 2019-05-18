# NAME: Init Item Storage
# PATH: gunivers-lib: gunivers-lib:functions/object/item/init

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Allow to initialize the Item Storage System by summon the buffer memory (armor stand) at the current location

# CODE:
#____________________________________________________________________________________________________

execute summon armor_stand ~ ~ ~ {Tags:["StoreBuffer","Glib"],ArmorItems:[{},{},{id:"slime_ball",Count:1b,tag:{Memory:[]}}]}