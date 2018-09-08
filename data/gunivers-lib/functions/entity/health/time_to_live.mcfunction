# NAME: TTL
# PATH: gunivers-lib:entity/health/time_to_live

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Glib_TTL (score dummy)

# INPUT:

# OUTPUT:

# NOTE:
#     Execute this fonction in a loop to set TTL to your entity.
#     20 = 1 second.
#     Execute this command: "scoreboard players set @e[scores={Glib_TTL=0}] Glib_TTL <Value>" to set custome time before the execution of this function
#     Set a negative value to make permanent entities.

# CONFIGURATION:
#     Default time to live (10s)
scoreboard players set @e[scores={Glib_TTL=0}] Glib_TTL 200
#     Acton when time out
execute as @e[scores={TTL=1}] at @e run kill @s

# CODE:
#____________________________________________________________________________________________________

scoreboard players add @e Glib_TTL 0
scoreboard players remove @e[scores={Glib_TTL=1..} TTL 0