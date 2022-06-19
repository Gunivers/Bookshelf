# This function was automatically generated.

execute as @a[tag=glib.menu.debug.vector.local,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.vector.local] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.vector.local] glib.menu.page 0
execute as @a[tag=glib.menu.debug.vector.local,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.vector.local,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.vector.local,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.vector.local,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.vector.local] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.vector.local] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.vector.local] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.vector.local] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.vector.local,tag=glib.menu.debug.vector] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.vector.local] remove glib.menu.debug.vector
tag @a[tag=glib.menu.debug.vector.local.close] add glib.menu.debug.vector
execute as @a[tag=glib.menu.debug.vector.local.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.vector.local.close] remove glib.menu.debug.vector.local
tag @a[tag=glib.menu.debug.vector.local.close] remove glib.menu.debug.vector.local.close

tellraw @a[tag=glib.menu.debug.vector.local] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.vector.local,scores={glib.menu.page = 0},tag=!glib.debug.vector.local.fast_normalize] ["", {"text": "   fast_normalize: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.vector.local.fast_normalize"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.vector.local.fast_normalize"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.vector.local,scores={glib.menu.page = 0},tag=glib.debug.vector.local.fast_normalize] ["", {"text": "   fast_normalize: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.vector.local.fast_normalize"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.vector.local.fast_normalize"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.vector.local,scores={glib.menu.page = 0},tag=!glib.debug.vector.local.get_from_classic_vector] ["", {"text": "   get_from_classic_vector: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.vector.local.get_from_classic_vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.vector.local.get_from_classic_vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.vector.local,scores={glib.menu.page = 0},tag=glib.debug.vector.local.get_from_classic_vector] ["", {"text": "   get_from_classic_vector: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.vector.local.get_from_classic_vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.vector.local.get_from_classic_vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.vector.local] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.vector.local.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / vector / local", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.vector.local.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]