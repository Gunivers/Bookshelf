#AUTHOR: Kikipunk
#PATH: gunivers-lib/math/random

#NAME: Random

#VERSION: 4.0
#MINECRAFT: 1.13+

# OUTPUT
# - Res (score)

# INIT:
scoreboard objectives add Res dummy

#CODE:
#____________________________________________________________________________________________________

#Random MC
summon area_effect_cloud ~ ~1 ~ {Tags:["Glib","Glib_Random"],Age:1}
execute store result score @s Res run data get entity @e[type=area_effect_cloud,tag=Glib_Random,limit=1] UUIDMost 0.00000000023283064
kill @e[type=area_effect_cloud,tag=Glib_Random]

# tellraw @a ["",{"text":"[Debug] Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]