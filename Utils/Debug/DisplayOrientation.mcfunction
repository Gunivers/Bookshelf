# NAME: Display Vector
# PATH: Gunivers-Lib:Utils/Debug/DisplayVector

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:

# NOTE:

# CODE:

tellraw @a ["",{"text":"[Debug]","color":"green","bold":"true"},{"text":" Phi: ","color":"red"},{"score":{"name":"@s","objective":"Phi"}},{"text":" | Theta: ","color":"red"},{"score":{"name":"@s","objective":"Theta"}}]