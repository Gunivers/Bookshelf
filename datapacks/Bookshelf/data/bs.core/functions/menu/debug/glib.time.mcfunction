# This function was automatically generated.

execute as @a[tag=bs.menu.debug.bs.time,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.time] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.bs.time] bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.time,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.time,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.time,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.time,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.time] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.time] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.bs.time] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.bs.time] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.bs.time,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.time] remove bs.menu.debug
tag @a[tag=bs.menu.debug.bs.time.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.bs.time.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.time.close] remove bs.menu.debug.bs.time
tag @a[tag=bs.menu.debug.bs.time.close] remove bs.menu.debug.bs.time.close

tellraw @a[tag=bs.menu.debug.bs.time] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.bs.time,scores={bs.menu.page = 0},tag=!bs.debug.bs.time.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.time.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.time.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.time,scores={bs.menu.page = 0},tag=bs.debug.bs.time.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.time.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.time.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.time,scores={bs.menu.page = 0},tag=!bs.debug.bs.time.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.time.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.time.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.time,scores={bs.menu.page = 0},tag=bs.debug.bs.time.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.time.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.time.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=bs.menu.debug.bs.time] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.time.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / bs.time", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.time.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]