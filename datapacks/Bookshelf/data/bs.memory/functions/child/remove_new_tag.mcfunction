# NAME: Remove "New" Tag
# PATH: glib_child:memory/remove_new_tag

# AUTHOR: theogiraudet

# CHILD OF: bs.memory:create_new_memory

#NOTE: Removes "New" tag of all Memories, deletes the Entity Memory if this doesn't have custom tag.

# CODE:
tag @e[tag=New,tag=Memory,tag=Glib] remove New
execute as @e[tag=Memory,tag=Glib] store result score @s bs.var0 run data get entity @s Tags
kill @e[tag=Memory,tag=Glib,scores={bs.var0=2}]