# This function was automatically generated.

execute as @a[tag=glib.menu.debug.item,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.item] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.item] glib.menu.page 0
execute as @a[tag=glib.menu.debug.item,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.item,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.item,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.item,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.item] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.item] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.item] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.item] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.item,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.item] remove glib.menu.debug
tag @a[tag=glib.menu.debug.item.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.item.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.item.close] remove glib.menu.debug.item
tag @a[tag=glib.menu.debug.item.close] remove glib.menu.debug.item.close

tellraw @a[tag=glib.menu.debug.item] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.item,scores={glib.menu.page = 0},tag=!glib.debug.item.convert_to_block] ["", {"text": "   convert_to_block: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.item.convert_to_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.item.convert_to_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.item,scores={glib.menu.page = 0},tag=glib.debug.item.convert_to_block] ["", {"text": "   convert_to_block: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.item.convert_to_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.item.convert_to_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.item,scores={glib.menu.page = 0},tag=!glib.debug.item.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.item.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.item.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.item,scores={glib.menu.page = 0},tag=glib.debug.item.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.item.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.item.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.item,scores={glib.menu.page = 0},tag=!glib.debug.item.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.item.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.item.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.item,scores={glib.menu.page = 0},tag=glib.debug.item.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.item.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.item.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=glib.menu.debug.item] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.item.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / item", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.item.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]