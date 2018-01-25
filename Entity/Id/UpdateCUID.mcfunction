# NAME: Update Chain Unique Identifier
# PATH: Entity/Id/UpdateCUID

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - ID (score dummy)

# INPUT:

# OUTPUT:
# - ID (score dummy)

# CODE:

scoreboard players set CUID ID 1
scoreboard players tag @e[score_ID_min=1] add UpdateCUID

function Gunivers-Lib:Entity/Id/Child/UpdateCUID-Check

scoreboard players tag @e remove UpdateCUID
scoreboard players tag @e remove CorrectCUID