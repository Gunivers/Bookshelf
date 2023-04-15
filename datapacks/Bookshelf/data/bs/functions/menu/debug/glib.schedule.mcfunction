# This function was automatically generated.

execute as @a[tag=bs.menu.debug.bs.schedule,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.schedule] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.bs.schedule] bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.schedule,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.schedule,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.schedule,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.schedule,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.schedule] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.schedule] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.bs.schedule] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.bs.schedule] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.bs.schedule,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.schedule] remove bs.menu.debug
tag @a[tag=bs.menu.debug.bs.schedule.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.bs.schedule.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.schedule.close] remove bs.menu.debug.bs.schedule
tag @a[tag=bs.menu.debug.bs.schedule.close] remove bs.menu.debug.bs.schedule.close

tellraw @a[tag=bs.menu.debug.bs.schedule] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.bs.schedule,scores={bs.menu.page = 0},tag=!bs.debug.bs.schedule.cancel_schedule_command] ["", {"text": "   cancel_schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.schedule,scores={bs.menu.page = 0},tag=bs.debug.bs.schedule.cancel_schedule_command] ["", {"text": "   cancel_schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.schedule,scores={bs.menu.page = 0}] {"text": "   + child", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.schedule.child"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.bs.schedule,scores={bs.menu.page = 0},tag=!bs.debug.bs.schedule.clear_queue] ["", {"text": "   clear_queue: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.schedule,scores={bs.menu.page = 0},tag=bs.debug.bs.schedule.clear_queue] ["", {"text": "   clear_queue: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.schedule,scores={bs.menu.page = 0},tag=!bs.debug.bs.schedule.schedule_command] ["", {"text": "   schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.schedule,scores={bs.menu.page = 0},tag=bs.debug.bs.schedule.schedule_command] ["", {"text": "   schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=bs.menu.debug.bs.schedule] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.schedule.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / bs.schedule", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.schedule.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]