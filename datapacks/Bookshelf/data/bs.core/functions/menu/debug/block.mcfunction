# This function was automatically generated.

execute as @a[tag=bs.menu.debug.block,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.block] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.block] bs.menu.page 0
execute as @a[tag=bs.menu.debug.block,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.block,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.block,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.block,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.block] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.block] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.block] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.block] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.block,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.block] remove bs.menu.debug
tag @a[tag=bs.menu.debug.block.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.block.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.block.close] remove bs.menu.debug.block
tag @a[tag=bs.menu.debug.block.close] remove bs.menu.debug.block.close

tellraw @a[tag=bs.menu.debug.block] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.block,scores={bs.menu.page = 0},tag=!bs.debug.block.convert_to_item] ["", {"text": "   convert_to_item: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.block,scores={bs.menu.page = 0},tag=bs.debug.block.convert_to_item] ["", {"text": "   convert_to_item: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.block,scores={bs.menu.page = 0},tag=!bs.debug.block.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.block,scores={bs.menu.page = 0},tag=bs.debug.block.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.block,scores={bs.menu.page = 0},tag=!bs.debug.block.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.block,scores={bs.menu.page = 0},tag=bs.debug.block.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.block] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.block.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / block", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.block.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]