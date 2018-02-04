# NAME: Get Simple Unique Identifier
# PATH: Entity/Id/GetSUID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Id

# INPUT:

# OUTPUT:
# - Id (score dummy)

# NOTE:
#Gives a unique identifier to the source entity

# CODE:
scoreboard players add SUID Data 1
scoreboard players operation @s Id = SUID Data
