# Get SUID (Unique Identifier)

# @Author: KubbyDev

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - UID (score dummy)

# Input values:
# - Null

# Output values:
# - UID

#Gives a unique identifier to the source entity
scoreboard players add UID UID 1
scoreboard players operation @s UID = UID UID
