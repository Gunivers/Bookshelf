# SCORES ----------------------------------------------------------------------

scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location X","color":"aqua"}]
scoreboard objectives add bs.loc.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Y","color":"aqua"}]
scoreboard objectives add bs.loc.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

scoreboard objectives add bs.loc.rx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative Location X","color":"aqua"}]
scoreboard objectives add bs.loc.ry dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative Location Y","color":"aqua"}]
scoreboard objectives add bs.loc.rz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Relative Location Z","color":"aqua"}]

# METADATA --------------------------------------------------------------------

scoreboard players set module.location bs.metadata 1

# INFO ------------------------------------------------------------------------

tellraw @s [{"text": "[bs.location documentation]", "color": "dark_aqua", "clickEvent": {"action": "open_url", "value": "https://bookshelf.docs.gunivers.net/en/latest/modules/location.html"}, "hoverEvent": {"action": "show_text", "contents": "Click to open URL"}}]
