# NAME: Display Location
# PATH: gunivers-lib:utils/debug/displaylocation

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# INPUT:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# OUTPUT:

# NOTE:

# CODE:

tellraw @a ["",{"text":"[Debug]","color":"green","bold":"true"},{"text":" X: ","color":"red"},{"score":{"name":"@s","objective":"LocX"}},{"text":" | Y: ","color":"red"},{"score":{"name":"@s","objective":"LocY"}},{"text":" | Z: ","color":"red"},{"score":{"name":"@s","objective":"LocZ"}}]