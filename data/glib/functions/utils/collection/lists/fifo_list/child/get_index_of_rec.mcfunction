# NAME: FIFO List - getIndexOf
# PATH: glib:collection/lists/fifo_list/get_index_of_rec

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# CHILD OF:
# glib:collection/lists/fifo_list/get_index_of

# CODE:

execute store success score @s glib.var2 store result score @s glib.var1 run data get entity @s ArmorItems[2].tag.fifo[0]
execute if score @s[scores={glib.var2=1}] glib.var4 = @s glib.var1 run scoreboard players set @s glib.var3 1
execute unless entity @s[scores={glib.var3=1}] run scoreboard players add @s glib.res0 1
execute unless entity @s[scores={glib.var3=1}] run function glib:collection/lists/fifo_list/pop
execute unless entity @s[scores={glib.var3=1}] if entity @s[scores={glib.var2=1}] run function glib:collection/lists/fifo_list/get_index_of_rec