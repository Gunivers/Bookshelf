# NAME: Update Chain Unique Identifier - Plug
# PATH: Entity/Id/UpdateCUID-Plug

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# CHILD OF:
# - Entity/Id/UpdateCUID-Check

# INPUT:
# - 

# OUTPUT:
# - ID

# NOTE:
# - 

# CODE:

scoreboard players remove @e[tag=HasToMove] ID 1

scoreboard players tag @e[score_ID_min=0,score_ID=0,tag=UpdateCUID] add CorrectCUID
execute @e[tag=CorrectCUID] ~ ~ ~ scoreboard players tag @e remove HasToMove

execute @e[tag=HasToMove,c=1] ~ ~ ~ function Gunivers-Lib:Entity/Id/UpdateCUID-Plug