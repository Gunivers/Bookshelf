execute if score @s BlockId matches 14391 run setblock ~ ~ ~ repeater[delay=4,facing=east,locked=false,powered=true]
execute if score @s BlockId matches 14392 run setblock ~ ~ ~ repeater[delay=4,facing=east,locked=false,powered=false]
execute if score @s BlockId matches 14393 run setblock ~ ~ ~ repeating_command_block[conditional=true,facing=north]