# This function was automatically generated.

execute as @a[tag=glib.menu.debug.gsys.lgdir,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.gsys.lgdir] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.gsys.lgdir] glib.menu.page 0
execute as @a[tag=glib.menu.debug.gsys.lgdir,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.gsys.lgdir,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.gsys.lgdir,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.gsys.lgdir,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.gsys.lgdir] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page -1
execute as @a[tag=glib.menu.debug.gsys.lgdir] if score @s glib.menu.page matches 0.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.gsys.lgdir] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.gsys.lgdir] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.gsys.lgdir,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.gsys.lgdir] remove glib.menu.debug
tag @a[tag=glib.menu.debug.gsys.lgdir.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.gsys.lgdir.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.gsys.lgdir.close] remove glib.menu.debug.gsys.lgdir
tag @a[tag=glib.menu.debug.gsys.lgdir.close] remove glib.menu.debug.gsys.lgdir.close

tellraw @a[tag=glib.menu.debug.gsys.lgdir] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


tellraw @a[tag=glib.menu.debug.gsys.lgdir] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.gsys.lgdir.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / gsys.lgdir", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.gsys.lgdir.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]