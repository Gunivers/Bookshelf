# NAME: Display Orientation
# PATH: Gunivers-Lib:Utils/Debug/DisplayOrientation

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Phi (score dummy)
# - Theta (score dummy)

# INPUT:
# - Phi (score dummy)
# - Theta (score dummy

# OUTPUT:

# NOTE:

# CODE:

tellraw @a ["",{"text":"[Debug]","color":"green","bold":"true"},{"text":" Phi: ","color":"red"},{"score":{"name":"@s","objective":"Phi"}},{"text":" | Theta: ","color":"red"},{"score":{"name":"@s","objective":"Theta"}}]