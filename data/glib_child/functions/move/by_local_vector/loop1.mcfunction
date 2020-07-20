scoreboard players operation move.factor glib *= 2 glib.const
scoreboard players operation move.vectorX glib /= 2 glib.const
scoreboard players operation move.vectorY glib /= 2 glib.const
scoreboard players operation move.vectorZ glib /= 2 glib.const

tag @s add glib.move.loop1
execute if score move.vectorX glib matches -1000..1000 if score move.vectorY glib matches -1000..1000 if score move.vectorZ glib matches -1000..1000 run tag @s remove glib.move.loop1

execute as @s[tag=glib.move.loop1] at @s run function glib_child:move/by_local_vector/loop1
