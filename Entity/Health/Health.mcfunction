# Set Health

# @Author: KubbyDev

#Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Health (score dummy)
# - HealthRead (score health)

#Input values:
# - Health (score dummy)

#Output values:
# - Health

#Note: 
# - This system can be sometimes imprecise when the health points are low (the player can be killed if he has 1 health point)


effect @s instant_damage 0
effect @s regeneration 0
effect @s resistance 2 255 true
scoreboard players tag @s add InitHealth
scoreboard players tag @s[score_Health_min=-100000] remove InitHealth
scoreboard players set @s[tag=InitHealth] Health 20
scoreboard players tag @s remove InitHealth
scoreboard players operation @s Health -= @s HealthRead
execute @s[score_Health_min=1] ~ ~ ~ function Gunivers-Lib:Entity/Set/UpdateHealthP
execute @s[score_Health=-1] ~ ~ ~ function Gunivers-Lib:Entity/Set/UpdateHealthM
scoreboard players operation @s Health += @s HealthRead