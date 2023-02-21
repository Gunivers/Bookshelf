# NAME: Remove "New" Tag
# PATH: bs_child:memory/remove_new_tag

# AUTHOR: theogiraudet

# CHILD OF: bs.memory:create_new_memory

#NOTE: Removes "New" tag of all Memories, deletes the Entity Memory if this doesn't have custom tag.

# CODE:
tag @e[tag=New,tag=Memory,tag=bs] remove New
execute as @e[tag=Memory,tag=bs] store result score @s bs.in.0 run data get entity @s Tags
kill @e[tag=Memory,tag=bs,scores={bs.in.0=2}]