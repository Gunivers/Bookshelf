# This function was automatically generated.

execute as @a[tag=bs.menu.debug.gsys.lgdir,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.gsys.lgdir] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.gsys.lgdir] bs.menu.page 0
execute as @a[tag=bs.menu.debug.gsys.lgdir,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.gsys.lgdir,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.gsys.lgdir,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.gsys.lgdir,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.gsys.lgdir] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page -1
execute as @a[tag=bs.menu.debug.gsys.lgdir] if score @s bs.menu.page matches 0.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.gsys.lgdir] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.gsys.lgdir] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.gsys.lgdir,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.gsys.lgdir] remove bs.menu.debug
tag @a[tag=bs.menu.debug.gsys.lgdir.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.gsys.lgdir.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.gsys.lgdir.close] remove bs.menu.debug.gsys.lgdir
tag @a[tag=bs.menu.debug.gsys.lgdir.close] remove bs.menu.debug.gsys.lgdir.close

tellraw @a[tag=bs.menu.debug.gsys.lgdir] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


tellraw @a[tag=bs.menu.debug.gsys.lgdir] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.gsys.lgdir.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / gsys.lgdir", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.gsys.lgdir.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]