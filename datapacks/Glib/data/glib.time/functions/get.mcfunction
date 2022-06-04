

execute unless entity @e[tag=Get_SysTime] run tellraw @s ["",{"text":"/!\\ No setup please do ","color":"dark_red"},{"text":"/function glib.time:set","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/function glib.time:set"}},{"text":" /!\\","color":"dark_red"}]

execute at @e[tag=Get_SysTime] unless block ~ ~1 ~ chest run tellraw @s ["",{"text":"/!\\ Broken systeme detected! Please do ","color":"dark_red"},{"text":"/function glib.time:set","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/function glib.time:set"}},{"text":" /!\\","color":"dark_red"}]

execute at @e[tag=Get_SysTime] unless block ~ ~ ~ repeating_command_block run tellraw @s ["",{"text":"/!\\ Broken systeme detected! Please do ","color":"dark_red"},{"text":"/function glib.time:set","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/function glib.time:set"}},{"text":" /!\\","color":"dark_red"}]


execute as @e[tag=Get_SysTime] at @s run data modify entity @s HandItems[0].tag.heure set from block ~ ~ ~ LastOutput
execute as @e[tag=Get_SysTime] at @s run loot insert ~ ~1 ~ mine ~ ~1 ~ mainhand

scoreboard objectives add Systime dummy

execute as @e[tag=Get_SysTime] at @s store result score Heure Systime run data get block ~ ~1 ~ Items[{id:"minecraft:golden_hoe"}].tag.Heure
execute as @e[tag=Get_SysTime] at @s store result score Minute Systime run data get block ~ ~1 ~ Items[{id:"minecraft:golden_hoe"}].tag.Minute
execute as @e[tag=Get_SysTime] at @s store result score Seconde Systime run data get block ~ ~1 ~ Items[{id:"minecraft:golden_hoe"}].tag.Seconde

execute as @e[tag=Get_SysTime] at @s run data remove block ~ ~1 ~ Items[{id:"minecraft:golden_hoe"}]