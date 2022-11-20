# This function was automatically generated.

execute as @a[tag=bs.menu.debug.bs.color,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.color] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.bs.color] bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.color,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.color,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.color,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.color,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.color] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.color] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.bs.color] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.bs.color] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.bs.color,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.color] remove bs.menu.debug
tag @a[tag=bs.menu.debug.bs.color.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.bs.color.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.color.close] remove bs.menu.debug.bs.color
tag @a[tag=bs.menu.debug.bs.color.close] remove bs.menu.debug.bs.color.close

tellraw @a[tag=bs.menu.debug.bs.color] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.bs.color,scores={bs.menu.page = 0}] {"text": "   + child", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.color.child"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.bs.color,scores={bs.menu.page = 0},tag=!bs.debug.bs.color.minecraft_color_to_rgb] ["", {"text": "   minecraft_color_to_rgb: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.color,scores={bs.menu.page = 0},tag=bs.debug.bs.color.minecraft_color_to_rgb] ["", {"text": "   minecraft_color_to_rgb: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.color,scores={bs.menu.page = 0},tag=!bs.debug.bs.color.rgb_to_minecraft_color] ["", {"text": "   rgb_to_minecraft_color: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.color,scores={bs.menu.page = 0},tag=bs.debug.bs.color.rgb_to_minecraft_color] ["", {"text": "   rgb_to_minecraft_color: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=bs.menu.debug.bs.color] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.color.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / bs.color", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.color.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]