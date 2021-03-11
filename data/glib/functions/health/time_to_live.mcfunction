#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib:health/time_to_live
# Parallelizable: true
# Note: You need to execute this function each tick on every entity on wich you want to apply a glib.ttl. Default glib.ttl: 10s

#__________________________________________________
# PARAMETERS

# Input: @s glib.ttl (score): Time to live (the entity is killed if it's score reach 0)

#__________________________________________________
# INIT

scoreboard objectives add glib.ttl dummy [{"text":"GLib ","color":"gold"},{"text":"Time to Live","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#     Default time to live (10s). Default TTL must be in negative.
scoreboard players set @s[tag=!glib.config.override,scores={glib.ttl=0}] glib.ttl -200
#     Acton when time out
execute as @s[tag=glib.ttl.timeOut] run function glib:health/safe_kill

#__________________________________________________
# CODE

scoreboard players add @s glib.ttl 0
scoreboard players remove @s[scores={glib.ttl=2..}] glib.ttl 1
scoreboard players add @s[scores={glib.ttl=..-2}] glib.ttl 1

tag @s[scores={glib.ttl=..0}] add glib.ttl.default
tag @s[scores={glib.ttl=1..}] remove glib.ttl.default

tag @s[scores={glib.ttl=1}] add glib.ttl.timeOut
tag @s[scores={glib.ttl=-1}] add glib.ttl.timeOut
