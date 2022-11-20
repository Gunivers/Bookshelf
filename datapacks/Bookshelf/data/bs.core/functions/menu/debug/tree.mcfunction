# This function was automatically generated.

execute as @a[tag=bs.menu.debug.tree,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.tree] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.tree] bs.menu.page 0
execute as @a[tag=bs.menu.debug.tree,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.tree,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.tree,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.tree,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.tree] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.tree] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.tree] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.tree] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.tree,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.tree] remove bs.menu.debug
tag @a[tag=bs.menu.debug.tree.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.tree.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.tree.close] remove bs.menu.debug.tree
tag @a[tag=bs.menu.debug.tree.close] remove bs.menu.debug.tree.close

tellraw @a[tag=bs.menu.debug.tree] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.tree,scores={bs.menu.page = 0}] [{"text": "   Nothing here :/", "color": "gray"}]

tellraw @a[tag=bs.menu.debug.tree] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.tree.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / tree", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.tree.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]