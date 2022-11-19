# This function was automatically generated.

execute as @a[tag=glib.menu.debug.vector,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.vector] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.vector] glib.menu.page 0
execute as @a[tag=glib.menu.debug.vector,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.vector,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.vector,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.vector,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.vector] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.vector] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.vector] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.vector] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.vector,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.vector] remove glib.menu.debug
tag @a[tag=glib.menu.debug.vector.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.vector.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.vector.close] remove glib.menu.debug.vector
tag @a[tag=glib.menu.debug.vector.close] remove glib.menu.debug.vector.close

tellraw @a[tag=glib.menu.debug.vector] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.vector,scores={glib.menu.page = 0}] {"text": "   + classic", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.vector.classic"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.vector,scores={glib.menu.page = 0}] {"text": "   + local", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.vector.local"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}

tellraw @a[tag=glib.menu.debug.vector] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.vector.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / vector", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.vector.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]