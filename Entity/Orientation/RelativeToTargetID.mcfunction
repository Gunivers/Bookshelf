# NAME: Orientation Relative To ID
# PATH: Gunivers-Lib:Entity/Orientation/RelativeToID

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Orientation (Import file)
# - Gunivers-Lib:Utils/Import/ID (Import file)

# INPUT:
# - Theta (score dummy)  /!\ must be defined on both entities
# - Phi (score dummy)  /!\ must be defined on both entities
# - TargetID (score dummy)  <- ID

# OUTPUT:
# - Pi (score dummy)
# - Theta (score dummy)

# CODE:

function Gunivers-Lib/Entity/Id/Check

scoreboard players operation @s Phi -= @e[c=1,tag=IdMatch] Phi
scoreboard players operation @s Theta -= @e[c=1,tag=IdMatch] Theta