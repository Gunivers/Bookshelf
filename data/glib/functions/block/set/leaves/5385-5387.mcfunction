execute if score @s glib.blockId matches 5385 run setblock ~ ~ ~ tripwire_hook[attached=false,facing=west,powered=false]
execute if score @s glib.blockId matches 5386 run setblock ~ ~ ~ tripwire_hook[attached=false,facing=east,powered=true]
execute if score @s glib.blockId matches 5387 run setblock ~ ~ ~ dispenser[attached=false,facing=east,powered=false,facing=north,triggered=true]
