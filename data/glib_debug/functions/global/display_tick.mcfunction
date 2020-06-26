scoreboard objectives add glib.debug.Tmp dummy
execute store result score @s glib.debug.Tmp run time query gametime
tellraw @s ["",{"text":"\n"},{"text":"██████████ ","color":"black"},{"text":"Tick ","color":"gray"},{"score":{"name":"@s","objective":"glib.debug.Tmp"},"color":"gray"},{"text":" ██████████","color":"black"},{"text":"\n "}]
scoreboard objectives remove glib.debug.Tmp
