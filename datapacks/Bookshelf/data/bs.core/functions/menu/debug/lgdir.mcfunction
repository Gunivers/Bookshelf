# This function was automatically generated.

execute as @a[tag=bs.menu.debug.lgdir,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.lgdir] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.lgdir] bs.menu.page 0
execute as @a[tag=bs.menu.debug.lgdir,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.lgdir,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.lgdir,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.lgdir,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.lgdir] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.lgdir] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.lgdir] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.lgdir] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.lgdir,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.lgdir] remove bs.menu.debug
tag @a[tag=bs.menu.debug.lgdir.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.lgdir.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.lgdir.close] remove bs.menu.debug.lgdir
tag @a[tag=bs.menu.debug.lgdir.close] remove bs.menu.debug.lgdir.close

tellraw @a[tag=bs.menu.debug.lgdir] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.lgdir,scores={bs.menu.page = 0}] [{"text": "   Nothing here :/", "color": "gray"}]

tellraw @a[tag=bs.menu.debug.lgdir] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.lgdir.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / lgdir", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.lgdir.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]