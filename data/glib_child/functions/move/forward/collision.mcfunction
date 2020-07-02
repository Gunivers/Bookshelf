execute store result score @s glib.var0 run data get entity @s Rotation[0] 1
execute store result score @s glib.var1 run data get entity @s Rotation[1] 1
#     Detect X
execute at @s[scores={CollisionLocal=1..,glib.var0=1..179}] run function glib_child:move/forward/collision_detect_neg_x
execute at @s[scores={CollisionLocal=1..,glib.var0=-179..-1}] run function glib_child:move/forward/collision_detect_pos_x
#     Detect Y
execute at @s[scores={CollisionLocal=1..,glib.var1=1..}] run function glib_child:move/forward/collision_detect_neg_y
execute at @s[scores={CollisionLocal=1..,glib.var1=..-1}] run function glib_child:move/forward/collision_detect_pos_y
#     Detect Z
execute at @s[scores={CollisionLocal=1..,glib.var0=..-91}] run function glib_child:move/forward/collision_detect_neg_z
execute at @s[scores={CollisionLocal=1..,glib.var0=91..}] run function glib_child:move/forward/collision_detect_neg_z
execute at @s[scores={CollisionLocal=1..,glib.var0=-89..89}] run function glib_child:move/forward/collision_detect_pos_z

# REACTIONS


scoreboard players set @s[tag=Collision] glib.var3 0

execute if entity @s[tag=CollisionLocal] run function glib_config:move/collision_reactions_local/_main_

# UPDATE

function glib:orientation/set
