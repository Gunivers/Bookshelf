# This function was automatically generated.

execute as @a[tag=glib.menu.debug.memory,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.memory] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.memory] glib.menu.page 0
execute as @a[tag=glib.menu.debug.memory,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.memory,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.memory,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.memory,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.memory] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.memory] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.memory] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.memory] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.memory,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.memory] remove glib.menu.debug
tag @a[tag=glib.menu.debug.memory.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.memory.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.memory.close] remove glib.menu.debug.memory
tag @a[tag=glib.menu.debug.memory.close] remove glib.menu.debug.memory.close

tellraw @a[tag=glib.menu.debug.memory] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.memory,scores={glib.menu.page = 0},tag=!glib.debug.memory.create_new_memory] ["", {"text": "   create_new_memory: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.memory.create_new_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.memory.create_new_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.memory,scores={glib.menu.page = 0},tag=glib.debug.memory.create_new_memory] ["", {"text": "   create_new_memory: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.memory.create_new_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.memory.create_new_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.memory,scores={glib.menu.page = 0},tag=!glib.debug.memory.exist] ["", {"text": "   exist: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.memory.exist"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.memory.exist"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.memory,scores={glib.menu.page = 0},tag=glib.debug.memory.exist] ["", {"text": "   exist: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.memory.exist"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.memory.exist"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.memory,scores={glib.menu.page = 0},tag=!glib.debug.memory.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.memory.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.memory.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.memory,scores={glib.menu.page = 0},tag=glib.debug.memory.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.memory.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.memory.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.memory,scores={glib.menu.page = 0},tag=!glib.debug.memory.save_in_memory] ["", {"text": "   save_in_memory: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.memory.save_in_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.memory.save_in_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.memory,scores={glib.menu.page = 0},tag=glib.debug.memory.save_in_memory] ["", {"text": "   save_in_memory: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.memory.save_in_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.memory.save_in_memory"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=glib.menu.debug.memory] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.memory.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / memory", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.memory.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]