# This function was automatically generated.

execute as @a[tag=bs.menu.debug.memory,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.memory] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.memory] bs.menu.page 0
execute as @a[tag=bs.menu.debug.memory,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.memory,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.memory,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.memory,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.memory] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.memory] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.memory] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.memory] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.memory,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.memory] remove bs.menu.debug
tag @a[tag=bs.menu.debug.memory.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.memory.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.memory.close] remove bs.menu.debug.memory
tag @a[tag=bs.menu.debug.memory.close] remove bs.menu.debug.memory.close

tellraw @a[tag=bs.menu.debug.memory] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.memory,scores={bs.menu.page = 0},tag=!bs.debug.memory.create_new_memory] ["", {"text": "   create_new_memory: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.memory.create_new_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.memory.create_new_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.memory,scores={bs.menu.page = 0},tag=bs.debug.memory.create_new_memory] ["", {"text": "   create_new_memory: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.memory.create_new_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.memory.create_new_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.memory,scores={bs.menu.page = 0},tag=!bs.debug.memory.exist] ["", {"text": "   exist: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.memory.exist"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.memory.exist"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.memory,scores={bs.menu.page = 0},tag=bs.debug.memory.exist] ["", {"text": "   exist: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.memory.exist"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.memory.exist"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.memory,scores={bs.menu.page = 0},tag=!bs.debug.memory.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.memory.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.memory.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.memory,scores={bs.menu.page = 0},tag=bs.debug.memory.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.memory.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.memory.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.memory,scores={bs.menu.page = 0},tag=!bs.debug.memory.save_in_memory] ["", {"text": "   save_in_memory: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.memory.save_in_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.memory.save_in_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.memory,scores={bs.menu.page = 0},tag=bs.debug.memory.save_in_memory] ["", {"text": "   save_in_memory: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.memory.save_in_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.memory.save_in_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.memory] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.memory.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / memory", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.memory.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]