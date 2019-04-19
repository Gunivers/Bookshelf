# NAME: Get Chain Unique Identifier
# PATH: gunivers-lib:entity/id/Getcuid

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# OUTPUT:
# - Id (score dummy)

# INIT
scoreboard objectives add Data dummy
scoreboard objectives add Id dummy

# CODE:
#____________________________________________________________________________________________________

#Gives a unique identifier to the source entity
scoreboard players add @s Id 0

execute if entity @s[scores={Id=0}] run scoreboard players add CUID Data 0
execute if entity @s[scores={Id=0}] run scoreboard players operation @s Id = CUID Data
execute if entity @s[scores={Id=0}] run scoreboard players add CUID Data 1
