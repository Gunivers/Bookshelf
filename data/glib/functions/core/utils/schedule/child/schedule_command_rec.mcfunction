# NAME: Schedule Command Rec
# PATH: glib:utils/schedule/child/schedule_command_rec

# AUTHOR: theogiraudet
# CONTRIBUTOR:
# - Redcoal

# VERSION: 1.0
# MINECRAFT: 1.14

# CHILD OF: glib:utils/schedule/schedule_command

# NOTE: 
# Var0 -> GameTick
# Buffer2 -> ScheduleCommand
# Buffer3 -> Prec ScheduleCommand
# Buffer4 -> Compute

# CODE:

#If is empty
execute store result score @s glib.var run data get entity @s ArmorItems[0].tag.Buffer2
execute if score @s glib.var matches 0 run tag @s add isLower

#Comparison
execute store result score @s glib.var run data get entity @s ArmorItems[0].tag.Buffer2[0].GameTick 1
execute if score @s Var0 < @s glib.var run tag @s add isLower

#If is lower or equal
execute unless entity @s[tag=isLower] run data modify entity @s ArmorItems[0].tag.Buffer3 append from entity @s ArmorItems[0].tag.Buffer2[0]
execute unless entity @s[tag=isLower] run data remove entity @s ArmorItems[0].tag.Buffer2[0]

#If is greater or empty
execute if entity @s[tag=isLower] run data modify entity @s ArmorItems[0].tag.Buffer2 prepend value {}
execute if entity @s[tag=isLower] run data modify entity @s ArmorItems[0].tag.Buffer2[0].glib.id set from entity @s ArmorItems[0].tag.Buffer.glib.id
execute if entity @s[tag=isLower] run data modify entity @s ArmorItems[0].tag.Buffer2[0].Command set from entity @s ArmorItems[0].tag.Buffer.Command
execute if entity @s[tag=isLower] store result entity @s ArmorItems[0].tag.Buffer2[0].GameTick int 1 run scoreboard players get @s Var0

execute unless entity @s[tag=isLower] run function glib:core/utils/schedule/child/schedule_command_rec
tag @s remove isLower