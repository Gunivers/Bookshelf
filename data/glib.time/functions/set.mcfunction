#Thanks to Zonteek for the idea of retrieving the time from a command block

execute as @e[tag=Get_SysTime] at @s run fill ~ ~ ~ ~ ~1 ~ air
kill @e[tag=Get_SysTime]


setblock ~ ~ ~ minecraft:repeating_command_block[conditional=false,facing=up]{auto:1b,Command:"help help",TrackOutput:1b,CustomName:'"Time Get"'}
setblock ~ ~1 ~ minecraft:chest{CustomName:'"Time converter"'}
execute align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["Get_SysTime"],NoGravity:1b,CustomName:'"Time converter"'}

