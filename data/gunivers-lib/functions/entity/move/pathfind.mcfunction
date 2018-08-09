execute at @s align x align y align z positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["Glib_Pathfind_Source"]}
execute align x align y align z positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["Glib_Pathfind_Target"]}

execute as @e[tag=Glib_Pathfind_Source] run function gunivers-lib:entity/move/child/pathfind_source

execute as @e[tag=Glib_Pathfind_Source] if entity @e[tag=Glib_Pathfind_Rewind,distance=..1.1] run say PATH CREATED !
execute as @e[tag=Glib_Pathfind_Source] unless entity @e[tag=Glib_Pathfind_Rewind,distance=..1.1] run say Unable to create the full path ...

# Clear
kill @e[tag=Glib_Pathfind_Target]
kill @e[tag=Glib_Pathfind_Source]
tag @s remove Glib_Pathfind_Source