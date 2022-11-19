# This function was automatically generated.

execute as @a[tag=glib.menu.debug.schedule,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.schedule] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.schedule] glib.menu.page 0
execute as @a[tag=glib.menu.debug.schedule,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.schedule,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.schedule,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.schedule,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.schedule] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.schedule] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.schedule] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.schedule] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.schedule,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.schedule] remove glib.menu.debug
tag @a[tag=glib.menu.debug.schedule.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.schedule.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.schedule.close] remove glib.menu.debug.schedule
tag @a[tag=glib.menu.debug.schedule.close] remove glib.menu.debug.schedule.close

tellraw @a[tag=glib.menu.debug.schedule] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.schedule,scores={glib.menu.page = 0},tag=!glib.debug.schedule.cancel_schedule_command] ["", {"text": "   cancel_schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.schedule,scores={glib.menu.page = 0},tag=glib.debug.schedule.cancel_schedule_command] ["", {"text": "   cancel_schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.schedule,scores={glib.menu.page = 0},tag=!glib.debug.schedule.clear_queue] ["", {"text": "   clear_queue: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.schedule,scores={glib.menu.page = 0},tag=glib.debug.schedule.clear_queue] ["", {"text": "   clear_queue: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.schedule,scores={glib.menu.page = 0},tag=!glib.debug.schedule.schedule_command] ["", {"text": "   schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.schedule,scores={glib.menu.page = 0},tag=glib.debug.schedule.schedule_command] ["", {"text": "   schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=glib.menu.debug.schedule] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.schedule.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / schedule", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.schedule.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]