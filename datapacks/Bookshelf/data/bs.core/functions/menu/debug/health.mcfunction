# This function was automatically generated.

execute as @a[tag=bs.menu.debug.health,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.health] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.health] bs.menu.page 0
execute as @a[tag=bs.menu.debug.health,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.health,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.health,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.health,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.health] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.health] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.health] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.health] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.health,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.health] remove bs.menu.debug
tag @a[tag=bs.menu.debug.health.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.health.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.health.close] remove bs.menu.debug.health
tag @a[tag=bs.menu.debug.health.close] remove bs.menu.debug.health.close

tellraw @a[tag=bs.menu.debug.health] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.health,scores={bs.menu.page = 0},tag=!bs.debug.health.safe_kill] ["", {"text": "   safe_kill: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.health.safe_kill"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.health.safe_kill"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.health,scores={bs.menu.page = 0},tag=bs.debug.health.safe_kill] ["", {"text": "   safe_kill: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.health.safe_kill"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.health.safe_kill"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.health,scores={bs.menu.page = 0},tag=!bs.debug.health.time_to_live] ["", {"text": "   time_to_live: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.health.time_to_live"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.health.time_to_live"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.health,scores={bs.menu.page = 0},tag=bs.debug.health.time_to_live] ["", {"text": "   time_to_live: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.health.time_to_live"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.health.time_to_live"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.health] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.health.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / health", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.health.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]