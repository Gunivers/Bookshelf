scoreboard objectives add glib dummy [{"text":"GLib ","color":"gold"},{"text":"Debug","color":"dark_gray"}]
execute store result score @s glib run time query gametime
tellraw @s ["",{"text":"\n"},{"text":"██████████ ","color":"black"},{"text":"Tick ","color":"gray"},{"score":{"name":"@s","objective":"glib"},"color":"gray"},{"text":" ██████████","color":"black"},{"text":"\n "}]
scoreboard objectives remove glib
