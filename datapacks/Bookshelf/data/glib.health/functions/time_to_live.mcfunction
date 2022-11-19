#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: bs.health:time_to_live
# Parallelizable: true
# Note: You need to execute this function each tick on every entity on wich you want to apply a bs.ttl. Default bs.ttl: 10s

#__________________________________________________
# PARAMETERS

# Input: @s bs.ttl (score): Time to live (the entity is killed if it's score reach 0)

#__________________________________________________
# INIT

scoreboard objectives add bs.ttl dummy [{"text":"GLib ","color":"gold"},{"text":"Time to Live","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#     Default time to live (10s). Default TTL must be in negative.
scoreboard players set @s[tag=!bs.config.override,scores={bs.ttl=0}] bs.ttl -200
#     Acton when time out
execute as @s[tag=bs.ttl.timeOut] run function bs.health:safe_kill

#__________________________________________________
# CODE

scoreboard players add @s bs.ttl 0
scoreboard players remove @s[scores={bs.ttl=2..}] bs.ttl 1
scoreboard players add @s[scores={bs.ttl=..-2}] bs.ttl 1

tag @s[scores={bs.ttl=..0}] add bs.ttl.default
tag @s[scores={bs.ttl=1..}] remove bs.ttl.default

tag @s[scores={bs.ttl=1}] add bs.ttl.timeOut
tag @s[scores={bs.ttl=-1}] add bs.ttl.timeOut
