# NAME: Get Simple Unique Identifier
# PATH: entity/id/getsuid

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# OUTPUT:
# - Id (score dummy)

# NOTE:
#Gives a unique identifier to the source entity

# INIT
scoreboard objectives add Data dummy
scoreboard objectives add Id dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players add @s Id 0

execute if entity @s[scores={Id=0}] run scoreboard players add SUID Data 1
execute if entity @s[scores={Id=0}] run scoreboard players operation @s Id = SUID Data
