# NAME: Set Health
# PATH: gunivers-lib:entity/health/sethealth

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Health (score dummy)
# - HealthRead (score health)

# INPUT:
# - Health (score dummy)

# OUTPUT:
# - Health

# NOTE: <Note>
#
# /!\
# - This function must be executed every tick !
# - Don't forget to deal damage to the players once (to update the HealthRead score (Thanks Moajng :/))
# - Don't forget to turn off Natural Regeneration (/gamerule naturalRegeneration false) 
# /!\
#
# This function sets the player's health equal to his Health score

# CODE:

effect clear @s regeneration
effect clear @s poison
effect clear @s resistance

tag @e remove Health0
tag @s[scores={Health=..0}] add Health0
scoreboard players set @s[tag=Health0] Health 20

#Action when the Health score is 0
kill @s[tag=Health0]

scoreboard players operation @s Health -= @s HealthRead
execute as @s[scores={Health=1..}] run function gunivers-lib:entity/health/child/addhealth
execute as @s[scores={Health=..-1}] run function gunivers-lib:entity/health/child/removehealth
scoreboard players operation @s Health += @s HealthRead