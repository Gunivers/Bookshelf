# This function was automatically generated.

execute as @a[tag=glib.menu.debug.move.by_motion,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.move.by_motion] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.move.by_motion] glib.menu.page 0
execute as @a[tag=glib.menu.debug.move.by_motion,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.move.by_motion,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.move.by_motion,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.move.by_motion,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.move.by_motion] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.move.by_motion] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.move.by_motion] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.move.by_motion] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.move.by_motion,tag=glib.menu.debug.move] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.move.by_motion] remove glib.menu.debug.move
tag @a[tag=glib.menu.debug.move.by_motion.close] add glib.menu.debug.move
execute as @a[tag=glib.menu.debug.move.by_motion.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.move.by_motion.close] remove glib.menu.debug.move.by_motion
tag @a[tag=glib.menu.debug.move.by_motion.close] remove glib.menu.debug.move.by_motion.close

tellraw @a[tag=glib.menu.debug.move.by_motion] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.move.by_motion,scores={glib.menu.page = 0}] [{"text": "   Nothing here :/", "color": "gray"}]

tellraw @a[tag=glib.menu.debug.move.by_motion] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.move.by_motion.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / move / by_motion", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.move.by_motion.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]