# Get the block the player is walking on
execute as @a at @s positioned ~ ~ ~ run function glib.block:get
execute as @a at @s if block ~ ~ ~ air positioned ~ ~-0.7 ~ run function glib.block:get

# Getting the corresponding item
execute as @a at @s run function glib.block:convert_to_item

# Placing the item
execute as @a at @s positioned ~ ~ ~ positioned ^ ^ ^ run function glib.item:set

# Make items unpickable and floating
execute as @e[type=minecraft:item,tag=glib.new] run data modify entity @s PickupDelay set value 999999
execute as @e[type=minecraft:item,tag=glib.new] run data modify entity @s NoGravity set value 1

# Setting item's lifetime to 10 seconds
scoreboard players set @e[type=minecraft:item,tag=glib.new] glib.lifetime -201

# Remonving there "glib.new" tag
tag @e[type=minecraft:item,tag=glib.new] remove glib.new
