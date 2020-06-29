execute if score @s BlockId matches 16383 run setblock ~ ~ ~ tripwire_hook[attached=true,facing=north,powered=false]
execute if score @s BlockId matches 16384 run setblock ~ ~ ~ tripwire_hook[attached=true,facing=south,powered=true]
execute if score @s BlockId matches 16385 run setblock ~ ~ ~ tripwire_hook[attached=true,facing=south,powered=false]