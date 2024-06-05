# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard objectives add bs.link.rx dummy [{"text":"BS ","color":"dark_gray"},{"text":"Link relative X","color":"aqua"}]
scoreboard objectives add bs.link.ry dummy [{"text":"BS ","color":"dark_gray"},{"text":"Link relative Y","color":"aqua"}]
scoreboard objectives add bs.link.rz dummy [{"text":"BS ","color":"dark_gray"},{"text":"Link relative Z","color":"aqua"}]
scoreboard objectives add bs.link.lx dummy [{"text":"BS ","color":"dark_gray"},{"text":"Link local X","color":"aqua"}]
scoreboard objectives add bs.link.ly dummy [{"text":"BS ","color":"dark_gray"},{"text":"Link local Y","color":"aqua"}]
scoreboard objectives add bs.link.lz dummy [{"text":"BS ","color":"dark_gray"},{"text":"Link local Z","color":"aqua"}]
scoreboard objectives add bs.link.lv dummy [{"text":"BS ","color":"dark_gray"},{"text":"Link local V","color":"aqua"}]
scoreboard objectives add bs.link.lh dummy [{"text":"BS ","color":"dark_gray"},{"text":"Link local H","color":"aqua"}]
scoreboard objectives add bs.link.to dummy [{"text":"BS ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

scoreboard players set 10 bs.const 10

execute store result score #result bs.data run worldborder get
execute if score #result bs.data matches 2147484.. run worldborder set 2147483 0
