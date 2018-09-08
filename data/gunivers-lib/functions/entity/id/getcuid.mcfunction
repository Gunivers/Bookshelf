# NAME: Get Chain Unique Identifier
# PATH: gunivers-lib:entity/id/Getcuid

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-lib:utils/import/id

# INPUT:

# OUTPUT:
# - Id (score dummy)

# CODE:
#____________________________________________________________________________________________________

#Gives a unique identifier to the source entity
scoreboard players add CUID Data 0
scoreboard players operation @s Id = CUID Data
scoreboard players add CUID Data 1
