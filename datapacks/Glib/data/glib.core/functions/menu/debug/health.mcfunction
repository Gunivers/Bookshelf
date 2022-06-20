# This function was automatically generated.

execute as @a[tag=glib.menu.debug.health,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.health] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.health] glib.menu.page 0
execute as @a[tag=glib.menu.debug.health,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.health,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.health,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.health,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.health] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.health] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.health] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.health] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.health,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.health] remove glib.menu.debug
tag @a[tag=glib.menu.debug.health.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.health.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.health.close] remove glib.menu.debug.health
tag @a[tag=glib.menu.debug.health.close] remove glib.menu.debug.health.close

tellraw @a[tag=glib.menu.debug.health] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.health,scores={glib.menu.page = 0},tag=!glib.debug.health.safe_kill] ["", {"text": "   safe_kill: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.health.safe_kill"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.health.safe_kill"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.health,scores={glib.menu.page = 0},tag=glib.debug.health.safe_kill] ["", {"text": "   safe_kill: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.health.safe_kill"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.health.safe_kill"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.health,scores={glib.menu.page = 0},tag=!glib.debug.health.time_to_live] ["", {"text": "   time_to_live: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.health.time_to_live"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.health.time_to_live"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.health,scores={glib.menu.page = 0},tag=glib.debug.health.time_to_live] ["", {"text": "   time_to_live: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.health.time_to_live"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.health.time_to_live"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=glib.menu.debug.health] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.health.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / health", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.health.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]