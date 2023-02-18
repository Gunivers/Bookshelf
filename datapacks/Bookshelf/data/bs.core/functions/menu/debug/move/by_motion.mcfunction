# This function was automatically generated.

execute as @a[tag=bs.menu.debug.move.by_motion,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.move.by_motion] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.move.by_motion] bs.menu.page 0
execute as @a[tag=bs.menu.debug.move.by_motion,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.move.by_motion,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.move.by_motion,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.move.by_motion,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.move.by_motion] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.move.by_motion] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.move.by_motion] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.move.by_motion] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.move.by_motion,tag=bs.menu.debug.move] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.move.by_motion] remove bs.menu.debug.move
tag @a[tag=bs.menu.debug.move.by_motion.close] add bs.menu.debug.move
execute as @a[tag=bs.menu.debug.move.by_motion.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.move.by_motion.close] remove bs.menu.debug.move.by_motion
tag @a[tag=bs.menu.debug.move.by_motion.close] remove bs.menu.debug.move.by_motion.close

tellraw @a[tag=bs.menu.debug.move.by_motion] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.move.by_motion,scores={bs.menu.page = 0}] [{"text": "   Nothing here :/", "color": "gray"}]

tellraw @a[tag=bs.menu.debug.move.by_motion] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.move.by_motion.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / move / by_motion", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.move.by_motion.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]