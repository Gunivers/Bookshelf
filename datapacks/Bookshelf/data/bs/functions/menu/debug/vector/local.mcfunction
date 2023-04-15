# This function was automatically generated.

execute as @a[tag=bs.menu.debug.vector.local,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.vector.local] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.vector.local] bs.menu.page 0
execute as @a[tag=bs.menu.debug.vector.local,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.vector.local,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.vector.local,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.vector.local,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.vector.local] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.vector.local] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.vector.local] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.vector.local] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.vector.local,tag=bs.menu.debug.vector] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.vector.local] remove bs.menu.debug.vector
tag @a[tag=bs.menu.debug.vector.local.close] add bs.menu.debug.vector
execute as @a[tag=bs.menu.debug.vector.local.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.vector.local.close] remove bs.menu.debug.vector.local
tag @a[tag=bs.menu.debug.vector.local.close] remove bs.menu.debug.vector.local.close

tellraw @a[tag=bs.menu.debug.vector.local] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.vector.local,scores={bs.menu.page = 0},tag=!bs.debug.vector.local.fast_normalize] ["", {"text": "   fast_normalize: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.vector.local.fast_normalize"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.vector.local.fast_normalize"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.vector.local,scores={bs.menu.page = 0},tag=bs.debug.vector.local.fast_normalize] ["", {"text": "   fast_normalize: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.vector.local.fast_normalize"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.vector.local.fast_normalize"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.vector.local,scores={bs.menu.page = 0},tag=!bs.debug.vector.local.get_from_classic_vector] ["", {"text": "   get_from_classic_vector: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.vector.local.get_from_classic_vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.vector.local.get_from_classic_vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.vector.local,scores={bs.menu.page = 0},tag=bs.debug.vector.local.get_from_classic_vector] ["", {"text": "   get_from_classic_vector: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.vector.local.get_from_classic_vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.vector.local.get_from_classic_vector"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.vector.local] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.vector.local.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / vector / local", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.vector.local.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]