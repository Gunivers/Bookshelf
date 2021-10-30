tag @s[tag=glib.collision] remove glib.collision

execute at @s run function glib.orientation:get

# Detect X

execute at @s[scores={glib.collision=1..,glib.oriH=1..179}] run function glib.move:forward/child/collision_detect_neg_x
execute at @s[scores={glib.collision=1..,glib.oriH=-179..-1}] run function glib.move:forward/child/collision_detect_pos_x

# Detect Y

execute at @s[scores={glib.collision=1..,glib.oriV=1..}] run function glib.move:forward/child/collision_detect_neg_y
execute at @s[scores={glib.collision=1..,glib.oriV=..-1}] run function glib.move:forward/child/collision_detect_pos_y

# Detect Z

execute at @s[scores={glib.collision=1..,glib.oriH=..-91}] run function glib.move:forward/child/collision_detect_neg_z
execute at @s[scores={glib.collision=1..,glib.oriH=91..}] run function glib.move:forward/child/collision_detect_neg_z
execute at @s[scores={glib.collision=1..,glib.oriH=-89..89}] run function glib.move:forward/child/collision_detect_pos_z

# REACTIONS

execute if entity @s[tag=glib.collision] run scoreboard players set move.decomposition.factor glib 0
execute if entity @s[tag=glib.collision] run function glib.move:forward/config/collision/_main_

# UPDATE

function glib.orientation:set
