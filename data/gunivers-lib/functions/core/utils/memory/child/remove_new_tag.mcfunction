# NAME: Remove "New" Tag
# PATH: gunivers-lib:utils/memory/child/remove_new_tag

# AUTHOR: theogiraudet

# CHILD OF: gunivers-lib:utils/memory/create_new_memory

#NOTE: Removes "New" tag of all Memories, deletes the Entity Memory if this doesn't have custom tag.

# CODE:
tag @e[tag=New,tag=Memory,tag=Glib] remove New
execute as @e[tag=Memory,tag=Glib] store result score @s Var1 run data get entity @s Tags
kill @e[tag=Memory,tag=Glib,scores={Var1=2}]