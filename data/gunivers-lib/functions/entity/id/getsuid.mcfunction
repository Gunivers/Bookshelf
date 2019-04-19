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

scoreboard players add SUID Data 1
scoreboard players operation @s Id = SUID Data
