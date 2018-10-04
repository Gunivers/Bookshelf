#Function by Koder
#Edited by NOPEname

# Summon the area_effect_cloud and set it up ready to calculate the executor's rotation
summon area_effect_cloud ~ ~ ~ {Tags:[krc-]}
teleport @e[tag=krc-] ~ ~ ~ ~.5 ~.5

# Calculate the area_effect_cloud's rotation
execute @e[tag=krc-] ~ ~ ~ function main:get_rot/calc

# Copy the area_effect_cloud's rotation scores to the player
scoreboard players operation @s ry = @e[tag=krc-] ry
scoreboard players operation @s rx = @e[tag=krc-] rx

# Kill the area_effect_cloud
scoreboard players reset @e[tag=krc-]
kill @e[tag=krc-]