scoreboard players operation move.vectorX.tmp glib = move.vectorX glib
scoreboard players operation move.vectorY.tmp glib = move.vectorY glib
scoreboard players operation move.vectorZ.tmp glib = move.vectorZ glib

say 1
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" VectorZ: ","color":"dark_gray"},{"score":{"name":"move.vectorZ","objective":"glib"},"color":"gold"}]

execute at @s run function glib_child:move/by_local_vector/apply

scoreboard players remove move.factor glib 1
execute at @s if score move.factor glib matches 1.. run function glib_child:move/by_local_vector/loop2
