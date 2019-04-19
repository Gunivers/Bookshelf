# NAME: Update Chain Unique Identifier
# PATH: gunivers-lib:entity/id/Updatecuid

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# OUTPUT:
# - Id (score dummy)

# INIT
scoreboard objectives add Data dummy
scoreboard objectives add Id dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players set CUID Data 1
tag @e[scores={Id=1..}] add UpdateCUID

function gunivers-lib:entity/id/child/updatecuid-check

tag @e remove UpdateCUID
tag @e remove CorrectCUID
