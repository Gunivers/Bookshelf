#ActiveSlot
#@Author: theogiraudet

#Version: 1.0
#Minecraft Version: 1.12

#Import:
# - runIncrement (dummy)
# - setMinIncrement (dummy)
# - setMaxIncrement (dummy)
# - Temp (dummy)

#Input values:
# - runIncrement (tag)
# - loopIncrement (tag, loop)

#Output values:
# - stopLoop


#Code
execute @e[tag=runIncrement] ~ ~ ~ scoreboard players operation @e[r=0,c=1] runIncrement = @e[r=0,c=1] setMinIncrement
scoreboard players tag @e[tag=runIncrement] remove runIncrement
scoreboard players add @e[tag=!stopLoop,score_runIncrement_min=0] runIncrement 1
execute @e[tag=!stopLoop,score_runIncrement_min=0] ~ ~ ~ scoreboard players operation @e[r=0,c=1] Temp = @e[r=0,c=1] runIncrement
execute @e[tag=!stopLoop,score_runIncrement_min=0] ~ ~ ~ scoreboard players operation @e[r=0,c=1] Temp -= @e[r=0,c=1] setMaxIncrement
scoreboard players tag @e[score_Temp_min=0,score_runIncrement_min=0] add stopLoop
scoreboard players reset @e[tag=stopLoop] Temp