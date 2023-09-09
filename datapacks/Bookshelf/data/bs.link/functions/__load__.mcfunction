# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.link.rx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position X","color":"aqua"}]
scoreboard objectives add bs.link.ry dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position Y","color":"aqua"}]
scoreboard objectives add bs.link.rz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative position Z","color":"aqua"}]

scoreboard objectives add bs.link.lx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position X","color":"aqua"}]
scoreboard objectives add bs.link.ly dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position Y","color":"aqua"}]
scoreboard objectives add bs.link.lz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Local position Z","color":"aqua"}]

scoreboard objectives add bs.link.rv dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative rotation V","color":"aqua"}]
scoreboard objectives add bs.link.rh dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative rotation H","color":"aqua"}]

scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Linked to","color":"aqua"}]

scoreboard objectives add bs.const dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 10 bs.const 10
