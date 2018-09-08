# NAME: Get Chain Unique Identifier
# PATH: Entity/Id/GetCUID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - ID (score dummy)

# INPUT:

# OUTPUT:
# ID (score dummy)

# CODE:
#____________________________________________________________________________________________________


#Gives a unique identifier to the source entity
scoreboard players add CUID ID 0
scoreboard players operation @s ID = CUID ID
scoreboard players add CUID ID 1
