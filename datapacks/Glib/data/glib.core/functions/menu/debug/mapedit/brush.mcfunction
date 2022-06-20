# This function was automatically generated.

execute as @a[tag=glib.menu.debug.mapedit.brush,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.mapedit.brush] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.mapedit.brush] glib.menu.page 0
execute as @a[tag=glib.menu.debug.mapedit.brush,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.mapedit.brush,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.mapedit.brush,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.mapedit.brush,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.mapedit.brush] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.mapedit.brush] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.mapedit.brush] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.mapedit.brush] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.mapedit.brush,tag=glib.menu.debug.mapedit] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.mapedit.brush] remove glib.menu.debug.mapedit
tag @a[tag=glib.menu.debug.mapedit.brush.close] add glib.menu.debug.mapedit
execute as @a[tag=glib.menu.debug.mapedit.brush.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.mapedit.brush.close] remove glib.menu.debug.mapedit.brush
tag @a[tag=glib.menu.debug.mapedit.brush.close] remove glib.menu.debug.mapedit.brush.close

tellraw @a[tag=glib.menu.debug.mapedit.brush] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.mapedit.brush,scores={glib.menu.page = 0},tag=!glib.debug.mapedit.brush.esphere] ["", {"text": "   esphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.mapedit.brush.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.mapedit.brush.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.mapedit.brush,scores={glib.menu.page = 0},tag=glib.debug.mapedit.brush.esphere] ["", {"text": "   esphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.mapedit.brush.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.mapedit.brush.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.mapedit.brush,scores={glib.menu.page = 0},tag=!glib.debug.mapedit.brush.replace] ["", {"text": "   replace: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.mapedit.brush.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.mapedit.brush.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.mapedit.brush,scores={glib.menu.page = 0},tag=glib.debug.mapedit.brush.replace] ["", {"text": "   replace: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.mapedit.brush.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.mapedit.brush.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.mapedit.brush,scores={glib.menu.page = 0},tag=!glib.debug.mapedit.brush.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.mapedit.brush.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.mapedit.brush.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.mapedit.brush,scores={glib.menu.page = 0},tag=glib.debug.mapedit.brush.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.mapedit.brush.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.mapedit.brush.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.mapedit.brush,scores={glib.menu.page = 0},tag=!glib.debug.mapedit.brush.sphere] ["", {"text": "   sphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.mapedit.brush.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.mapedit.brush.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.mapedit.brush,scores={glib.menu.page = 0},tag=glib.debug.mapedit.brush.sphere] ["", {"text": "   sphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.mapedit.brush.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.mapedit.brush.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=glib.menu.debug.mapedit.brush] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.mapedit.brush.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / mapedit / brush", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.mapedit.brush.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]