# This function was automatically generated.

execute as @a[tag=glib.menu.debug.example,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.example] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.example] glib.menu.page 0
execute as @a[tag=glib.menu.debug.example,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.example,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.example,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.example,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.example] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.example] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.example] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.example] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.example,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.example] remove glib.menu.debug
tag @a[tag=glib.menu.debug.example.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.example.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.example.close] remove glib.menu.debug.example
tag @a[tag=glib.menu.debug.example.close] remove glib.menu.debug.example.close

tellraw @a[tag=glib.menu.debug.example] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.example,scores={glib.menu.page = 0},tag=!glib.debug.example.biome_displayer] ["", {"text": "   biome_displayer: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.example.biome_displayer"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.example.biome_displayer"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.example,scores={glib.menu.page = 0},tag=glib.debug.example.biome_displayer] ["", {"text": "   biome_displayer: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.example.biome_displayer"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.example.biome_displayer"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.example,scores={glib.menu.page = 0},tag=!glib.debug.example.drop_to_place] ["", {"text": "   drop_to_place: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.example.drop_to_place"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.example.drop_to_place"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.example,scores={glib.menu.page = 0},tag=glib.debug.example.drop_to_place] ["", {"text": "   drop_to_place: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.example.drop_to_place"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.example.drop_to_place"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.example,scores={glib.menu.page = 0},tag=!glib.debug.example.lgdir] ["", {"text": "   lgdir: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.example.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.example.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.example,scores={glib.menu.page = 0},tag=glib.debug.example.lgdir] ["", {"text": "   lgdir: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.example.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.example.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.example,scores={glib.menu.page = 0},tag=!glib.debug.example.walk_trail] ["", {"text": "   walk_trail: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.example.walk_trail"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.example.walk_trail"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.example,scores={glib.menu.page = 0},tag=glib.debug.example.walk_trail] ["", {"text": "   walk_trail: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.example.walk_trail"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.example.walk_trail"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.example] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.example.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / example", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.example.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]