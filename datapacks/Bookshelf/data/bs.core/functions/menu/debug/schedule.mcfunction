# This function was automatically generated.

execute as @a[tag=bs.menu.debug.schedule,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.schedule] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.schedule] bs.menu.page 0
execute as @a[tag=bs.menu.debug.schedule,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.schedule,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.schedule,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.schedule,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.schedule] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.schedule] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.schedule] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.schedule] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.schedule,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.schedule] remove bs.menu.debug
tag @a[tag=bs.menu.debug.schedule.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.schedule.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.schedule.close] remove bs.menu.debug.schedule
tag @a[tag=bs.menu.debug.schedule.close] remove bs.menu.debug.schedule.close

tellraw @a[tag=bs.menu.debug.schedule] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.schedule,scores={bs.menu.page = 0},tag=!bs.debug.schedule.cancel_schedule_command] ["", {"text": "   cancel_schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.schedule,scores={bs.menu.page = 0},tag=bs.debug.schedule.cancel_schedule_command] ["", {"text": "   cancel_schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.schedule,scores={bs.menu.page = 0},tag=!bs.debug.schedule.clear_queue] ["", {"text": "   clear_queue: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.schedule,scores={bs.menu.page = 0},tag=bs.debug.schedule.clear_queue] ["", {"text": "   clear_queue: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.schedule,scores={bs.menu.page = 0},tag=!bs.debug.schedule.schedule_command] ["", {"text": "   schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.schedule,scores={bs.menu.page = 0},tag=bs.debug.schedule.schedule_command] ["", {"text": "   schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.schedule] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.schedule.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / schedule", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.schedule.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]