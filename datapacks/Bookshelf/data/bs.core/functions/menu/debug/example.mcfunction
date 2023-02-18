# This function was automatically generated.

execute as @a[tag=bs.menu.debug.example,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.example] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.example] bs.menu.page 0
execute as @a[tag=bs.menu.debug.example,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.example,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.example,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.example,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.example] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.example] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.example] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.example] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.example,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.example] remove bs.menu.debug
tag @a[tag=bs.menu.debug.example.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.example.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.example.close] remove bs.menu.debug.example
tag @a[tag=bs.menu.debug.example.close] remove bs.menu.debug.example.close

tellraw @a[tag=bs.menu.debug.example] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.example,scores={bs.menu.page = 0},tag=!bs.debug.example.biome_displayer] ["", {"text": "   biome_displayer: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.example.biome_displayer"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.example.biome_displayer"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.example,scores={bs.menu.page = 0},tag=bs.debug.example.biome_displayer] ["", {"text": "   biome_displayer: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.example.biome_displayer"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.example.biome_displayer"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.example,scores={bs.menu.page = 0},tag=!bs.debug.example.drop_to_place] ["", {"text": "   drop_to_place: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.example.drop_to_place"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.example.drop_to_place"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.example,scores={bs.menu.page = 0},tag=bs.debug.example.drop_to_place] ["", {"text": "   drop_to_place: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.example.drop_to_place"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.example.drop_to_place"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.example,scores={bs.menu.page = 0},tag=!bs.debug.example.lgdir] ["", {"text": "   lgdir: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.example.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.example.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.example,scores={bs.menu.page = 0},tag=bs.debug.example.lgdir] ["", {"text": "   lgdir: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.example.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.example.lgdir"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.example,scores={bs.menu.page = 0},tag=!bs.debug.example.walk_trail] ["", {"text": "   walk_trail: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.example.walk_trail"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.example.walk_trail"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.example,scores={bs.menu.page = 0},tag=bs.debug.example.walk_trail] ["", {"text": "   walk_trail: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.example.walk_trail"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.example.walk_trail"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.example] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.example.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / example", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.example.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]