# This function was automatically generated.

execute as @a[tag=glib.menu.debug.block,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.block] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.block] glib.menu.page 0
execute as @a[tag=glib.menu.debug.block,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.block,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.block,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.block,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.block] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.block] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.block] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.block] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.block,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.block] remove glib.menu.debug
tag @a[tag=glib.menu.debug.block.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.block.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.block.close] remove glib.menu.debug.block
tag @a[tag=glib.menu.debug.block.close] remove glib.menu.debug.block.close

tellraw @a[tag=glib.menu.debug.block] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.block,scores={glib.menu.page = 0},tag=!glib.debug.block.convert_to_item] ["", {"text": "   convert_to_item: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.block,scores={glib.menu.page = 0},tag=glib.debug.block.convert_to_item] ["", {"text": "   convert_to_item: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.block.convert_to_item"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.block,scores={glib.menu.page = 0},tag=!glib.debug.block.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.block,scores={glib.menu.page = 0},tag=glib.debug.block.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.block.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.block,scores={glib.menu.page = 0},tag=!glib.debug.block.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.block,scores={glib.menu.page = 0},tag=glib.debug.block.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.block.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=glib.menu.debug.block] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.block.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / block", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.block.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]