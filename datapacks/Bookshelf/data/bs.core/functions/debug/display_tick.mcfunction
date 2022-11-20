scoreboard objectives add bs dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Debug","color":"aqua"}]
execute store result score @s bs run time query gametime
tellraw @s ["",{"text":"\n"},{"text":"██████████ ","color":"black"},{"text":"Tick ","color":"gray"},{"score":{"name":"@s","objective":"bs"},"color":"gray"},{"text":" ██████████","color":"black"},{"text":"\n "}]
scoreboard objectives remove bs
