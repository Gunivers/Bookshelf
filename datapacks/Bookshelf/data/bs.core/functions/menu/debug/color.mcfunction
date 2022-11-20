# This function was automatically generated.

execute as @a[tag=bs.menu.debug.color,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.color] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.color] bs.menu.page 0
execute as @a[tag=bs.menu.debug.color,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.color,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.color,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.color,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.color] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.color] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.color] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.color] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.color,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.color] remove bs.menu.debug
tag @a[tag=bs.menu.debug.color.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.color.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.color.close] remove bs.menu.debug.color
tag @a[tag=bs.menu.debug.color.close] remove bs.menu.debug.color.close

tellraw @a[tag=bs.menu.debug.color] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.color,scores={bs.menu.page = 0},tag=!bs.debug.color.minecraft_color_to_rgb] ["", {"text": "   minecraft_color_to_rgb: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.color,scores={bs.menu.page = 0},tag=bs.debug.color.minecraft_color_to_rgb] ["", {"text": "   minecraft_color_to_rgb: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.color,scores={bs.menu.page = 0},tag=!bs.debug.color.rgb_to_minecraft_color] ["", {"text": "   rgb_to_minecraft_color: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.color,scores={bs.menu.page = 0},tag=bs.debug.color.rgb_to_minecraft_color] ["", {"text": "   rgb_to_minecraft_color: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.color] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.color.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / color", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.color.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]