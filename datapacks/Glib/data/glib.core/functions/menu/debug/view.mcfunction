# This function was automatically generated.

execute as @a[tag=glib.menu.debug.view,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.view] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.view] glib.menu.page 0
execute as @a[tag=glib.menu.debug.view,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.view,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.view,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.view,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.view] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.view] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.view] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.view] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.view,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.view] remove glib.menu.debug
tag @a[tag=glib.menu.debug.view.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.view.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.view.close] remove glib.menu.debug.view
tag @a[tag=glib.menu.debug.view.close] remove glib.menu.debug.view.close

tellraw @a[tag=glib.menu.debug.view] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.view,scores={glib.menu.page = 0},tag=!glib.debug.view.aimed_block] ["", {"text": "   aimed_block: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.view.aimed_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.view.aimed_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.view,scores={glib.menu.page = 0},tag=glib.debug.view.aimed_block] ["", {"text": "   aimed_block: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.view.aimed_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.view.aimed_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.view,scores={glib.menu.page = 0},tag=!glib.debug.view.aimed_entity] ["", {"text": "   aimed_entity: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.view.aimed_entity"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.view.aimed_entity"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.view,scores={glib.menu.page = 0},tag=glib.debug.view.aimed_entity] ["", {"text": "   aimed_entity: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.view.aimed_entity"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.view.aimed_entity"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.view,scores={glib.menu.page = 0},tag=!glib.debug.view.can_see_ata] ["", {"text": "   can_see_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.view.can_see_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.view.can_see_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.view,scores={glib.menu.page = 0},tag=glib.debug.view.can_see_ata] ["", {"text": "   can_see_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.view.can_see_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.view.can_see_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.view,scores={glib.menu.page = 0},tag=!glib.debug.view.has_in_front_ata] ["", {"text": "   has_in_front_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.view.has_in_front_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.view.has_in_front_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.view,scores={glib.menu.page = 0},tag=glib.debug.view.has_in_front_ata] ["", {"text": "   has_in_front_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.view.has_in_front_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.view.has_in_front_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=glib.menu.debug.view] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.view.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / view", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.view.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]