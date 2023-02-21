#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Kikipunk
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:random
# Documentation: https://bs-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

#Random MC
summon area_effect_cloud ~ ~1 ~ {Tags:["bs","bs.random"],Age:1}
execute store result score @s bs.out.0 run data get entity @e[type=area_effect_cloud,tag=bs.random,limit=1] UUID[0]
kill @e[type=area_effect_cloud,tag=bs.random]

# tellraw @a ["",{"text":"[Debug] Result: ","color":"red"},{"score":{"name":"@s","objective":"bs.out.0"}}]
