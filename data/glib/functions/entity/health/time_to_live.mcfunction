#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib:entity/health/time_to_live
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#health
# Note: You need to execute this function each tick on every entity on wich you want to apply a TTL. Default TTL: 10s

#__________________________________________________
# PARAMETERS

# Input: TTL (score): Time to live (the entity is killed if it's score matches 1 ou -1)

#__________________________________________________
# INIT

scoreboard objectives add TTL dummy

#__________________________________________________
# CONFIG

#     Default time to live (10s)
scoreboard players set @s[tag=!Glib_Overrid_Config,scores={TTL=0}] TTL -200
#     Acton when time out
execute as @s[scores={TTL=1}] at @e run kill @s

#__________________________________________________
# CODE

scoreboard players add @s TTL 0
scoreboard players remove @s[scores={TTL=1..}] TTL 1
scoreboard players add @s[scores={TTL=..-1}] TTL 1
