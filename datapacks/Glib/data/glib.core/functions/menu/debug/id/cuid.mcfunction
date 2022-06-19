# This function was automatically generated.

execute as @a[tag=glib.menu.debug.id.cuid,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.id.cuid] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.id.cuid] glib.menu.page 0
execute as @a[tag=glib.menu.debug.id.cuid,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.id.cuid,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.id.cuid,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.id.cuid,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.id.cuid] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.id.cuid] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.id.cuid] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.id.cuid] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.id.cuid,tag=glib.menu.debug.id] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.id.cuid] remove glib.menu.debug.id
tag @a[tag=glib.menu.debug.id.cuid.close] add glib.menu.debug.id
execute as @a[tag=glib.menu.debug.id.cuid.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.id.cuid.close] remove glib.menu.debug.id.cuid
tag @a[tag=glib.menu.debug.id.cuid.close] remove glib.menu.debug.id.cuid.close

tellraw @a[tag=glib.menu.debug.id.cuid] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.id.cuid,scores={glib.menu.page = 0}] [{"text": "   Nothing here :/", "color": "gray"}]

tellraw @a[tag=glib.menu.debug.id.cuid] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.id.cuid.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / id / cuid", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.id.cuid.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]