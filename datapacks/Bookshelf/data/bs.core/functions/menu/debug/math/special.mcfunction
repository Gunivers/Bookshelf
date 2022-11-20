# This function was automatically generated.

execute as @a[tag=bs.menu.debug.math.special,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.special] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.math.special] bs.menu.page 0
execute as @a[tag=bs.menu.debug.math.special,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.math.special,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.math.special,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.math.special,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.math.special] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.math.special] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.math.special] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.math.special] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.math.special,tag=bs.menu.debug.math] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.special] remove bs.menu.debug.math
tag @a[tag=bs.menu.debug.math.special.close] add bs.menu.debug.math
execute as @a[tag=bs.menu.debug.math.special.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.special.close] remove bs.menu.debug.math.special
tag @a[tag=bs.menu.debug.math.special.close] remove bs.menu.debug.math.special.close

tellraw @a[tag=bs.menu.debug.math.special] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.math.special,scores={bs.menu.page = 0},tag=!bs.debug.math.special.get_next_pow2] ["", {"text": "   get_next_pow2: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.special.get_next_pow2"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.special.get_next_pow2"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.special,scores={bs.menu.page = 0},tag=bs.debug.math.special.get_next_pow2] ["", {"text": "   get_next_pow2: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.special.get_next_pow2"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.special.get_next_pow2"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.math.special,scores={bs.menu.page = 0},tag=!bs.debug.math.special.random] ["", {"text": "   random: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.special.random"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.special.random"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.special,scores={bs.menu.page = 0},tag=bs.debug.math.special.random] ["", {"text": "   random: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.special.random"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.special.random"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.math.special] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.special.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / math / special", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.special.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]