# This function was automatically generated.

execute as @a[tag=glib.menu.debug.glib.color,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.color] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.glib.color] glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.color,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.color,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.color,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.color,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.color] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.color] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.glib.color] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.glib.color] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.glib.color,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.color] remove glib.menu.debug
tag @a[tag=glib.menu.debug.glib.color.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.glib.color.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.color.close] remove glib.menu.debug.glib.color
tag @a[tag=glib.menu.debug.glib.color.close] remove glib.menu.debug.glib.color.close

tellraw @a[tag=glib.menu.debug.glib.color] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.glib.color,scores={glib.menu.page = 0}] {"text": "   + child", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.color.child"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.glib.color,scores={glib.menu.page = 0},tag=!glib.debug.glib.color.minecraft_color_to_rgb] ["", {"text": "   minecraft_color_to_rgb: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.color,scores={glib.menu.page = 0},tag=glib.debug.glib.color.minecraft_color_to_rgb] ["", {"text": "   minecraft_color_to_rgb: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.color,scores={glib.menu.page = 0},tag=!glib.debug.glib.color.rgb_to_minecraft_color] ["", {"text": "   rgb_to_minecraft_color: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.color,scores={glib.menu.page = 0},tag=glib.debug.glib.color.rgb_to_minecraft_color] ["", {"text": "   rgb_to_minecraft_color: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.glib.color] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.color.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / glib.color", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.color.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]