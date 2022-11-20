# This function was automatically generated.

execute as @a[tag=bs.menu.debug.vector,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.vector] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.vector] bs.menu.page 0
execute as @a[tag=bs.menu.debug.vector,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.vector,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.vector,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.vector,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.vector] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.vector] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.vector] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.vector] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.vector,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.vector] remove bs.menu.debug
tag @a[tag=bs.menu.debug.vector.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.vector.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.vector.close] remove bs.menu.debug.vector
tag @a[tag=bs.menu.debug.vector.close] remove bs.menu.debug.vector.close

tellraw @a[tag=bs.menu.debug.vector] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.vector,scores={bs.menu.page = 0}] {"text": "   + classic", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.vector.classic"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.vector,scores={bs.menu.page = 0}] {"text": "   + local", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.vector.local"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}

tellraw @a[tag=bs.menu.debug.vector] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.vector.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / vector", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.vector.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]