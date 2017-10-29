# NAME: Get Chain Unique Identifier
# PATH: Entity/Id/GetCUID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - ID (score)

# INPUT:
# - 

# OUTPUT:
# - CUID

# CODE:

#Gives a unique identifier to the source entity
scoreboard players operation @s ID = CUID ID
scoreboard players add CUID ID 1
