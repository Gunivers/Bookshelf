# This function was automatically generated.

execute as @a[tag=bs.menu.debug.bs.tree,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.tree] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.bs.tree] bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.tree,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.tree,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.tree,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.tree,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.tree] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page -1
execute as @a[tag=bs.menu.debug.bs.tree] if score @s bs.menu.page matches 0.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.bs.tree] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.bs.tree] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.bs.tree,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.tree] remove bs.menu.debug
tag @a[tag=bs.menu.debug.bs.tree.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.bs.tree.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.tree.close] remove bs.menu.debug.bs.tree
tag @a[tag=bs.menu.debug.bs.tree.close] remove bs.menu.debug.bs.tree.close

tellraw @a[tag=bs.menu.debug.bs.tree] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


tellraw @a[tag=bs.menu.debug.bs.tree] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.tree.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / bs.tree", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.tree.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]