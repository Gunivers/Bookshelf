# NAME: Compute Tick
# PATH: glib:utils/schedule/zzz_child/compute_tick

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# CHILD OF: glib:utils/schedule/schedule_command

# NOTE: Convert the specified time in Buffer.Timer to tick depending on the specified time unit and adds it to the current gametick.

# CODE:
execute store result score @s glib.var0 run data get entity @s ArmorItems[0].tag.Buffer.Timer

#Is Tick
data modify entity @s ArmorItems[0].tag.Buffer2 set value "tick"
execute store success score @s glib.var1 run data modify entity @s ArmorItems[0].tag.Buffer2 set from entity @s ArmorItems[0].tag.Buffer.TimeUnit
execute if score @s glib.var1 matches 0 run tag @s add Match

#Is Second
execute unless entity @s[tag=Match] run data modify entity @s ArmorItems[0].tag.Buffer2 set value "second"
execute unless entity @s[tag=Match] store success score @s glib.var1 run data modify entity @s ArmorItems[0].tag.Buffer2 set from entity @s ArmorItems[0].tag.Buffer.TimeUnit
execute unless entity @s[tag=Match] if score @s glib.var1 matches 0 run scoreboard players operation @s glib.var0 *= 20 glib.const
execute unless entity @s[tag=Match] if score @s glib.var1 matches 0 run tag @s add Match

#Is Day
execute unless entity @s[tag=Match] run data modify entity @s ArmorItems[0].tag.Buffer2 set value "day"
execute unless entity @s[tag=Match] store success score @s glib.var1 run data modify entity @s ArmorItems[0].tag.Buffer2 set from entity @s ArmorItems[0].tag.Buffer.TimeUnit
execute unless entity @s[tag=Match] if score @s glib.var1 matches 0 run scoreboard players operation @s glib.var0 *= 24000 glib.const

execute store result score @s Var0 run time query gametime
scoreboard players operation @s Var0 += @s glib.var0
scoreboard players operation @s glib.res0 = @s Var0

tag @s[tag=Match] remove Match