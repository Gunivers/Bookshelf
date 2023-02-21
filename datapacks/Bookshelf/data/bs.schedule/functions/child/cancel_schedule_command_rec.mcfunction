# NAME: Cancel Schedule Command Rec
# PATH: bs_child:schedule/cancel_schedule_command_rec

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# CHILD OF: bs.schedule:cancel_schedule_command

# NOTE:
data modify entity @s ArmorItems[0].tag.Buffer4 set from entity @s ArmorItems[0].tag.Buffer
execute store success score @s bs.in.0 run data modify entity @s ArmorItems[0].tag.Buffer4 set from entity @s ArmorItems[0].tag.Buffer2[0].bs.id

execute if score @s bs.in.0 matches 0 run data remove entity @s ArmorItems[0].tag.Buffer2[0]

execute if score @s bs.in.0 matches 1 run data modify entity @s ArmorItems[0].tag.Buffer3 append from entity @s ArmorItems[0].tag.Buffer2[0]
execute if score @s bs.in.0 matches 1 run data remove entity @s ArmorItems[0].tag.Buffer2[0]
execute if score @s bs.in.0 matches 1 if data entity @s ArmorItems[0].tag.Buffer2[0] run function bs_child:default/core/schedule/cancel_schedule_command_rec