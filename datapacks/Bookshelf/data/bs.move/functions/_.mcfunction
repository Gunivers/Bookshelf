# SCORES ----------------------------------------------------------------------

scoreboard objectives add bs.collision dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Collision Type","color":"aqua"}]
scoreboard objectives add bs.precision dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Precision Type","color":"aqua"}]

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

# MESSAGE ---------------------------------------------------------------------

tellraw @s [{"text": "[bs.move documentation]", "color": "dark_aqua", "clickEvent": {"action": "open_url", "value": "https://mc-bookshelf.rtfd.io/en/latest/move.html"}, "hoverEvent": {"action": "show_text", "contents": "Click to open URL"}}]

# METADATA --------------------------------------------------------------------

scoreboard players set module.move bs.metadata 1