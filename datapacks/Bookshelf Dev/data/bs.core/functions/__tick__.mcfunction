# Bookshelf Menu
execute if score menu.refresh bs.data matches 5.. run scoreboard players set menu.refresh bs.data 0
scoreboard players add menu.refresh bs.data 1
execute if entity @a[tag=bs.menu.active] run function bs:menu/dispatch

# Debug Id
scoreboard players add @e bs.debug.id 0
execute as @e[scores={bs.debug.id=0},limit=1] run scoreboard players add debug.id bs.data 1
execute as @e[scores={bs.debug.id=0},limit=1] run scoreboard players operation @s bs.debug.id = debug.id bs.data

# Life time
scoreboard players add @e bs.lifetime 1
kill @e[scores={bs.lifetime=-1}]

