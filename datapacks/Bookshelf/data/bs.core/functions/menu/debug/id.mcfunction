# This function was automatically generated.

execute as @a[tag=bs.menu.debug.id,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.id] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.id] bs.menu.page 0
execute as @a[tag=bs.menu.debug.id,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.id,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.id,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.id,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.id] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.id] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.id] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.id] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.id,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.id] remove bs.menu.debug
tag @a[tag=bs.menu.debug.id.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.id.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.id.close] remove bs.menu.debug.id
tag @a[tag=bs.menu.debug.id.close] remove bs.menu.debug.id.close

tellraw @a[tag=bs.menu.debug.id] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=!bs.debug.id.check] ["", {"text": "   check: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.check"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.check"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=bs.debug.id.check] ["", {"text": "   check: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.check"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.check"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=!bs.debug.id.check_parent] ["", {"text": "   check_parent: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.check_parent"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.check_parent"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=bs.debug.id.check_parent] ["", {"text": "   check_parent: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.check_parent"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.check_parent"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0}] {"text": "   + cuid", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.id.cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=!bs.debug.id.get_cuid] ["", {"text": "   get_cuid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.get_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.get_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=bs.debug.id.get_cuid] ["", {"text": "   get_cuid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.get_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.get_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=!bs.debug.id.get_suid] ["", {"text": "   get_suid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.get_suid"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.get_suid"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=bs.debug.id.get_suid] ["", {"text": "   get_suid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.get_suid"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.get_suid"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=!bs.debug.id.update_cuid] ["", {"text": "   update_cuid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.update_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.id.update_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.id,scores={bs.menu.page = 0},tag=bs.debug.id.update_cuid] ["", {"text": "   update_cuid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.update_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.id.update_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.id] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.id.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / id", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.id.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]