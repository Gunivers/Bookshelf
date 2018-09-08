# NAME: Get Simple Unique Identifier
# PATH: entity/id/getsuid

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-lib:utils/import/id

# INPUT:

# OUTPUT:
# - Id (score dummy)

# NOTE:
#Gives a unique identifier to the source entity

# CODE:
#____________________________________________________________________________________________________

scoreboard players add SUID Data 1
scoreboard players operation @s Id = SUID Data
