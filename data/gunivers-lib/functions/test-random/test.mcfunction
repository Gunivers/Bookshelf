summon area_effect_cloud 0 100 0 
execute as @e[type=area_effect_cloud] run function gunivers-lib:math/random
scoreboard players operation @e[type=area_effect_cloud] Res %= 100 Constant

execute as @e[type=area_effect_cloud] run tellraw @a ["",{"text":"[Debug] Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
execute as @e[type=area_effect_cloud] store result entity @e[type=area_effect_cloud,limit=1] Pos[0] double 1 run scoreboard players get @e[type=area_effect_cloud,limit=1] Res
execute as @e[type=area_effect_cloud] at @s unless block ~ ~ ~ air run function gunivers-lib:test-loop
execute at @e[type=area_effect_cloud] run setblock ~ ~ ~ black_stained_glass
kill @e[type=area_effect_cloud]