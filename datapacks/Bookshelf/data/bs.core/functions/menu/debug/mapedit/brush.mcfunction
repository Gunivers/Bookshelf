# This function was automatically generated.

execute as @a[tag=bs.menu.debug.mapedit.brush,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.mapedit.brush] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.mapedit.brush] bs.menu.page 0
execute as @a[tag=bs.menu.debug.mapedit.brush,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.mapedit.brush,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.mapedit.brush,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.mapedit.brush,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.mapedit.brush] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.mapedit.brush] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.mapedit.brush] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.mapedit.brush] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.mapedit.brush,tag=bs.menu.debug.mapedit] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.mapedit.brush] remove bs.menu.debug.mapedit
tag @a[tag=bs.menu.debug.mapedit.brush.close] add bs.menu.debug.mapedit
execute as @a[tag=bs.menu.debug.mapedit.brush.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.mapedit.brush.close] remove bs.menu.debug.mapedit.brush
tag @a[tag=bs.menu.debug.mapedit.brush.close] remove bs.menu.debug.mapedit.brush.close

tellraw @a[tag=bs.menu.debug.mapedit.brush] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.mapedit.brush,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.brush.esphere] ["", {"text": "   esphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.brush.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.brush.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit.brush,scores={bs.menu.page = 0},tag=bs.debug.mapedit.brush.esphere] ["", {"text": "   esphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.brush.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.brush.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit.brush,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.brush.replace] ["", {"text": "   replace: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.brush.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.brush.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit.brush,scores={bs.menu.page = 0},tag=bs.debug.mapedit.brush.replace] ["", {"text": "   replace: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.brush.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.brush.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit.brush,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.brush.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.brush.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.brush.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit.brush,scores={bs.menu.page = 0},tag=bs.debug.mapedit.brush.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.brush.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.brush.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit.brush,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.brush.sphere] ["", {"text": "   sphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.brush.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.brush.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit.brush,scores={bs.menu.page = 0},tag=bs.debug.mapedit.brush.sphere] ["", {"text": "   sphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.brush.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.brush.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.mapedit.brush] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.mapedit.brush.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / mapedit / brush", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.mapedit.brush.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]