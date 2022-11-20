# This function was automatically generated.

execute as @a[tag=bs.menu.debug.bs.view,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.view] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.bs.view] bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.view,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.view,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.view,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.view,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.view] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.view] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.bs.view] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.bs.view] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.bs.view,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.view] remove bs.menu.debug
tag @a[tag=bs.menu.debug.bs.view.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.bs.view.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.view.close] remove bs.menu.debug.bs.view
tag @a[tag=bs.menu.debug.bs.view.close] remove bs.menu.debug.bs.view.close

tellraw @a[tag=bs.menu.debug.bs.view] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0},tag=!bs.debug.bs.view.aimed_block] ["", {"text": "   aimed_block: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.view.aimed_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.view.aimed_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0},tag=bs.debug.bs.view.aimed_block] ["", {"text": "   aimed_block: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.view.aimed_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.view.aimed_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0},tag=!bs.debug.bs.view.aimed_entity] ["", {"text": "   aimed_entity: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.view.aimed_entity"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.view.aimed_entity"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0},tag=bs.debug.bs.view.aimed_entity] ["", {"text": "   aimed_entity: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.view.aimed_entity"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.view.aimed_entity"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0}] {"text": "   + can_see", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.view.can_see"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0},tag=!bs.debug.bs.view.can_see_ata] ["", {"text": "   can_see_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.view.can_see_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.view.can_see_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0},tag=bs.debug.bs.view.can_see_ata] ["", {"text": "   can_see_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.view.can_see_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.view.can_see_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0},tag=!bs.debug.bs.view.has_in_front_ata] ["", {"text": "   has_in_front_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.view.has_in_front_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.view.has_in_front_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.view,scores={bs.menu.page = 0},tag=bs.debug.bs.view.has_in_front_ata] ["", {"text": "   has_in_front_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.view.has_in_front_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.view.has_in_front_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=bs.menu.debug.bs.view] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.view.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / bs.view", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.view.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]