# This function was automatically generated.

execute as @a[tag=glib.menu.debug.glib.block,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.block] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.glib.block] glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.block,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.block,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.block,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.block,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.block] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.block] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.glib.block] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.glib.block] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.glib.block,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.block] remove glib.menu.debug
tag @a[tag=glib.menu.debug.glib.block.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.glib.block.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.block.close] remove glib.menu.debug.glib.block
tag @a[tag=glib.menu.debug.glib.block.close] remove glib.menu.debug.glib.block.close

tellraw @a[tag=glib.menu.debug.glib.block] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.glib.block,scores={glib.menu.page = 0},tag=!glib.debug.glib.block.convert_to_item] ["", {"text": "   convert_to_item: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.block,scores={glib.menu.page = 0},tag=glib.debug.glib.block.convert_to_item] ["", {"text": "   convert_to_item: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.block,scores={glib.menu.page = 0},tag=!glib.debug.glib.block.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.block,scores={glib.menu.page = 0},tag=glib.debug.glib.block.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.block,scores={glib.menu.page = 0},tag=!glib.debug.glib.block.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.block,scores={glib.menu.page = 0},tag=glib.debug.glib.block.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.glib.block] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.block.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / glib.block", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.block.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]