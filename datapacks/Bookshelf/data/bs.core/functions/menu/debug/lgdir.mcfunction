# This function was automatically generated.

execute as @a[tag=glib.menu.debug.lgdir,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.lgdir] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.lgdir] glib.menu.page 0
execute as @a[tag=glib.menu.debug.lgdir,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.lgdir,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.lgdir,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.lgdir,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.lgdir] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.lgdir] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.lgdir] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.lgdir] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.lgdir,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.lgdir] remove glib.menu.debug
tag @a[tag=glib.menu.debug.lgdir.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.lgdir.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.lgdir.close] remove glib.menu.debug.lgdir
tag @a[tag=glib.menu.debug.lgdir.close] remove glib.menu.debug.lgdir.close

tellraw @a[tag=glib.menu.debug.lgdir] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.lgdir,scores={glib.menu.page = 0}] [{"text": "   Nothing here :/", "color": "gray"}]

tellraw @a[tag=glib.menu.debug.lgdir] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.lgdir.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / lgdir", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.lgdir.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]