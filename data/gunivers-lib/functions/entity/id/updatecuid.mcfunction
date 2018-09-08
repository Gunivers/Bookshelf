# NAME: Update Chain Unique Identifier
# PATH: gunivers-lib:entity/id/Updatecuid

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-lib:utils/import/basic (import file)
# - Id(score dummy)

# INPUT:

# OUTPUT:
# - Id (score dummy)

# CODE:
#____________________________________________________________________________________________________

scoreboard players set CUID Data 1
scoreboard players tag @e[scores={Id=1..}] add UpdateCUID

function gunivers-lib:entity/id/child/updatecuid-check

tag @e remove UpdateCUID
tag @e remove CorrectCUID
