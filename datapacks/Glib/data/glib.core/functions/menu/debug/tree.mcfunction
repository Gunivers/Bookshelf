# This function was automatically generated.

execute as @a[tag=glib.menu.debug.tree,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.tree] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.tree] glib.menu.page 0
execute as @a[tag=glib.menu.debug.tree,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.tree,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.tree,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.tree,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.tree] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.tree] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.tree] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.tree] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.tree,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.tree] remove glib.menu.debug
tag @a[tag=glib.menu.debug.tree.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.tree.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.tree.close] remove glib.menu.debug.tree
tag @a[tag=glib.menu.debug.tree.close] remove glib.menu.debug.tree.close

tellraw @a[tag=glib.menu.debug.tree] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.tree,scores={glib.menu.page = 0}] [{"text": "   Nothing here :/", "color": "gray"}]

tellraw @a[tag=glib.menu.debug.tree] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.tree.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / tree", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.tree.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]