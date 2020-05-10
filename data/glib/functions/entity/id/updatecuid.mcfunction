#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/id/Updatecuid
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Note:

#__________________________________________________
# INIT

scoreboard objectives add Data dummy
scoreboard objectives add Id dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set CUID Data 1
tag @e[scores={Id=1..}] add UpdateCUID

function glib:entity/id/child/updatecuid-check

tag @e remove UpdateCUID
tag @e remove CorrectCUID
