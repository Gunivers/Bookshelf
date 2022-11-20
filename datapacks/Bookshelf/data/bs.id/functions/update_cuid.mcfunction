#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.id:Updatecuid
# Documentation: https://bs-core.readthedocs.io//entity#id
# Parallelizable: global
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.id dummy [{"text":"Bookshelf ","color":"gold"},{"text":"ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set id.chain bs.data 1
tag @e[scores={bs.id=1..}] add bs.id.chain.update

function bs.id:cuid/child/updatecuid-check

tag @e remove bs.id.chain.update
tag @e remove bs.id.chain.correct
