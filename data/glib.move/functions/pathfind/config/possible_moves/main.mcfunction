
# Link your own file with a glib.var3 value
execute at @s unless entity @e[tag=Glib_Pathfind_Target,distance=..0.7] if entity @s[scores={glib.var3=0}] run function glib.move:pathfind/config/possible_moves/terrestrial
execute at @s unless entity @e[tag=Glib_Pathfind_Target,distance=..0.7] if entity @s[scores={glib.var3=1}] run function glib.move:pathfind/config/possible_moves/aerial