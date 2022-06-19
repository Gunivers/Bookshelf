# This function was automatically generated.

execute as @a[tag=glib.menu.debug.glib.vector,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.vector] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.glib.vector] glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.vector,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.vector,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.vector,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.vector,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.vector] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.vector] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.glib.vector] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.glib.vector] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.glib.vector,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.vector] remove glib.menu.debug
tag @a[tag=glib.menu.debug.glib.vector.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.glib.vector.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.vector.close] remove glib.menu.debug.glib.vector
tag @a[tag=glib.menu.debug.glib.vector.close] remove glib.menu.debug.glib.vector.close

tellraw @a[tag=glib.menu.debug.glib.vector] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.glib.vector,scores={glib.menu.page = 0}] {"text": "   + classic", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.vector.classic"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.glib.vector,scores={glib.menu.page = 0}] {"text": "   + local", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.vector.local"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}

tellraw @a[tag=glib.menu.debug.glib.vector] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.vector.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / glib.vector", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.vector.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]