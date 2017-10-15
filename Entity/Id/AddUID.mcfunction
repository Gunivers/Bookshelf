# Add UID (Unique Identifier)

# @Author: KubbyDev

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - UID (score dummy)

# Input values:
# - Null

# Output values:
# - UID

#Gives a unique identifier to a player
scoreboard players add UID UID 1
scoreboard players operation UID UID = @s UID
