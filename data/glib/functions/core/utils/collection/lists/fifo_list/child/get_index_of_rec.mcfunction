# NAME: FIFO List - getIndexOf
# PATH: glib:collection/lists/fifo_list/get_index_of_rec

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# CHILD OF:
# glib:collection/lists/fifo_list/get_index_of

# CODE:

execute store success score @s Var3 store result score @s Var2 run data get entity @s ArmorItems[2].tag.fifo[0]
execute if score @s[scores={Var3=1}] Var5 = @s Var2 run scoreboard players set @s Var4 1
execute unless entity @s[scores={Var4=1}] run scoreboard players add @s Res 1
execute unless entity @s[scores={Var4=1}] run function glib:collection/lists/fifo_list/pop
execute unless entity @s[scores={Var4=1}] if entity @s[scores={Var3=1}] run function glib:collection/lists/fifo_list/get_index_of_rec