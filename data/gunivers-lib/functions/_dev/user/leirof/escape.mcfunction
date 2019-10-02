execute at @s align x align y align z positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["Glib_Pathfind_Source"]}
summon armor_stand ~ ~ ~ {Invisible:0,Marker:0,NoGravity:1,Tags:["Glib_Pathfind_Target"]}

execute as @e[tag=Glib_Pathfind_Source] run function gunivers-lib:entity/move/child/escape/source


# Clear
kill @e[tag=Glib_Pathfind_Target]
kill @e[tag=Glib_Pathfind_Source]