#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Kikipunk
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/random
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

#Random MC
summon area_effect_cloud ~ ~1 ~ {Tags:["Glib","Glib_Random"],Age:1}
execute store result score @s Res1 run data get entity @e[type=area_effect_cloud,tag=Glib_Random,limit=1] UUIDMost 0.00000000023283064
kill @e[type=area_effect_cloud,tag=Glib_Random]

# tellraw @a ["",{"text":"[Debug] Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
