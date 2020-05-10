# NAME: Save Variable in Memory
# PATH: glib:utils/memory/save_in_memory

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - @s ArmorItems[0].tag.Buffer1 ~ Variable Name (NBT)
# - @s ArmorItems[0].tag.Buffer2 ~ Variable Value (NBT)

# NOTE:
# Writes the pair <name;value> in the Memory. If the variable exists, overrides the value of the existing pair.
# If the executing entity is not a valid Memory, do nothing.

#INIT:
function glib:core/utils/memory/child/init

# CODE:

#Initialization
execute if entity @s[tag=Memory,tag=Glib] if data entity @s ArmorItems[0].tag.Buffer1 if data entity @s ArmorItems[0].tag.Buffer2 run tag @s add Valid
execute if entity @s[tag=Valid] run data modify entity @s ArmorItems[0].tag.Buffer3 set value []
#Rec
execute if entity @s[tag=Valid] run function glib:core/utils/memory/child/save_rec

#Refill the memory
execute if entity @s[tag=Valid] run data modify entity @s ArmorItems[0].tag.Memory prepend from entity @s ArmorItems[0].tag.Buffer3[]

# If the Memory is empty
execute if entity @s[tag=Valid] unless data entity @s ArmorItems[0].tag.Memory[0] run scoreboard players set @s Var1 1

#If the recursive ends due to the empty memory, then the ID is not in the list therefore we add it at the beggining of the memory
execute if entity @s[tag=Valid] if score @s Var1 matches 1 run say a
execute if entity @s[tag=Valid] if score @s Var1 matches 1 run data modify entity @s ArmorItems[0].tag.Memory prepend value {}
execute if entity @s[tag=Valid] if score @s Var1 matches 1 run data modify entity @s ArmorItems[0].tag.Memory[0].Id set from entity @s ArmorItems[0].tag.Buffer1
execute if entity @s[tag=Valid] if score @s Var1 matches 1 run data modify entity @s ArmorItems[0].tag.Memory[0].Value set from entity @s ArmorItems[0].tag.Buffer2
tag @s remove Valid