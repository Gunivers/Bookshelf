# SCORES ----------------------------------------------------------------------

scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location X","color":"aqua"}]
scoreboard objectives add bs.loc.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Y","color":"aqua"}]
scoreboard objectives add bs.loc.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

# METADATA --------------------------------------------------------------------

scoreboard players set module.location bs.metadata 1

# INFO ------------------------------------------------------------------------

tellraw @s [{"text": "[bs.location documentation]", "color": "dark_aqua", "clickEvent": {"action": "open_url", "value": "https://mc-bookshelf.rtfd.io/en/latest/location.html"}, "hoverEvent": {"action": "show_text", "contents": "Click to open URL"}}]
