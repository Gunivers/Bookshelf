# This function was automatically generated.

execute as @a[tag=bs.menu.debug.bs.vector,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.vector] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.bs.vector] bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.vector,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.vector,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.vector,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.vector,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.vector] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.vector] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.bs.vector] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.bs.vector] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.bs.vector,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.vector] remove bs.menu.debug
tag @a[tag=bs.menu.debug.bs.vector.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.bs.vector.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.vector.close] remove bs.menu.debug.bs.vector
tag @a[tag=bs.menu.debug.bs.vector.close] remove bs.menu.debug.bs.vector.close

tellraw @a[tag=bs.menu.debug.bs.vector] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.bs.vector,scores={bs.menu.page = 0}] {"text": "   + classic", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.vector.classic"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.bs.vector,scores={bs.menu.page = 0}] {"text": "   + local", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.vector.local"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}

tellraw @a[tag=bs.menu.debug.bs.vector] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.vector.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / bs.vector", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.vector.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]