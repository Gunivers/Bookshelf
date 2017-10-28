# NAME: Set Health
# PATH: Gunivers-Lib: Gunivers-Lib/Entity/Health/Set

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - Health (score dummy)
# - HealthRead (score health)

# INPUT:
# - Health (score dummy)

# OUTPUT:
# - Health

# NOTE: <Note>
# - This system can be sometimes imprecise when the health points are low (the player can be killed if he has 1 health point)

# CODE:

effect @s instant_damage 0
effect @s regeneration 0
effect @s resistance 2 255 true
scoreboard players tag @s add InitHealth
scoreboard players tag @s[score_Health_min=-100000] remove InitHealth
scoreboard players set @s[tag=InitHealth] Health 20
scoreboard players tag @s remove InitHealth
scoreboard players operation @s Health -= @s HealthRead
execute @s[score_Health_min=1] ~ ~ ~ function Gunivers-Lib:Entity/Health/UpdateHealthP
execute @s[score_Health=-1] ~ ~ ~ function Gunivers-Lib:Entity/Health/UpdateHealthM
scoreboard players operation @s Health += @s HealthRead