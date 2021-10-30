#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Kikipunk
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.math:random
# Documentation: https://glib-core.readthedocs.io//math
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
summon area_effect_cloud ~ ~1 ~ {Tags:["glib","glib.random"],Age:1}
execute store result score @s glib.res0 run data get entity @e[type=area_effect_cloud,tag=glib.random,limit=1] UUID[0]
kill @e[type=area_effect_cloud,tag=glib.random]

# tellraw @a ["",{"text":"[Debug] Result: ","color":"red"},{"score":{"name":"@s","objective":"glib.res0"}}]
