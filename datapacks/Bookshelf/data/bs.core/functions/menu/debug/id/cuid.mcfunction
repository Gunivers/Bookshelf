# This function was automatically generated.

execute as @a[tag=bs.menu.debug.id.cuid,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.id.cuid] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.id.cuid] bs.menu.page 0
execute as @a[tag=bs.menu.debug.id.cuid,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.id.cuid,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.id.cuid,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.id.cuid,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.id.cuid] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.id.cuid] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.id.cuid] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.id.cuid] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.id.cuid,tag=bs.menu.debug.id] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.id.cuid] remove bs.menu.debug.id
tag @a[tag=bs.menu.debug.id.cuid.close] add bs.menu.debug.id
execute as @a[tag=bs.menu.debug.id.cuid.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.id.cuid.close] remove bs.menu.debug.id.cuid
tag @a[tag=bs.menu.debug.id.cuid.close] remove bs.menu.debug.id.cuid.close

tellraw @a[tag=bs.menu.debug.id.cuid] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.id.cuid,scores={bs.menu.page = 0}] [{"text": "   Nothing here :/", "color": "gray"}]

tellraw @a[tag=bs.menu.debug.id.cuid] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.id.cuid.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / id / cuid", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.id.cuid.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]