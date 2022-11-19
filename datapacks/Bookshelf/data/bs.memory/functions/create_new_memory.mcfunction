# NAME: Create New Memory
# PATH: bs.memory:create_new_memory

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE:
# Create a new Entity Memory used in some Gunivers-Lib's Systems. This entity has the tags "New" and "Memory". It keeps the first tag only one tick, allowing to add a custom tag at this entity.
# If no custom tag has been put, this entity will be killed automatically.

# CODE:
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["Glib","New","Memory"],ArmorItems:[{id:"minecraft:slime_ball",Count:1b,tag:{Memory:[]}},{},{},{}]}
schedule function glib_child:default/core/memory/remove_new_tag 1t