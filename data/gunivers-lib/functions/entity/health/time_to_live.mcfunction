# NAME: TTL
# PATH: gunivers-lib:entity/health/time_to_live

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# NOTE:
#     Execute this fonction in a loop to set TTL to your entity.
#     20 = 1 second.
#     Execute this command: "scoreboard players set @e[scores={Glib_TTL=0}] Glib_TTL <Value>" to set custome time before the execution of this function
#     Set a negative value to make permanent entities.

# INIT
scoreboard objectives add TTL dummy

# CONFIGURATION:
#     Default time to live (10s)
scoreboard players set @s[scores={TTL=0}] TTL 200
#     Acton when time out
execute as @s[scores={TTL=1}] at @e run kill @s

# CODE:
#____________________________________________________________________________________________________

scoreboard players add @s TTL 0
scoreboard players remove @s[scores={TTL=1..}] TTL 1