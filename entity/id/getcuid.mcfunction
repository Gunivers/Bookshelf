# NAME: Get Chain Unique Identifier
# PATH: Entity/Id/GetCUID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Id

# INPUT:

# OUTPUT:
# - Id (score dummy)

# CODE:

#Gives a unique identifier to the source entity
scoreboard players add CUID Data 0
scoreboard players operation @s Id = CUID Data
scoreboard players add CUID Data 1
