# NAME: Get Simple Unique Identifier
# PATH: Entity/Id/GetSUID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - ID (score dummy)

# INPUT:

# OUTPUT:
# - ID (score dummy)

# NOTE:
# - If you use another system to give an ID to an entity, this system can give non unique IDs !
# - To fix it, please run this command everytime you give an ID to an entity: /scoreboard players add ID ID 1

# CODE:

#Gives a unique identifier to the source entity
scoreboard players add ID ID 1
scoreboard players operation @s ID = ID ID
