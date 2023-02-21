tag @s[tag=bs.collision] remove bs.collision

execute at @s run function bs.orientation:get

# Detect X

execute at @s[scores={bs.collision=1..,bs.ori.h=1..179}] run function bs.move:forward/child/collision_detect_neg_x
execute at @s[scores={bs.collision=1..,bs.ori.h=-179..-1}] run function bs.move:forward/child/collision_detect_pos_x

# Detect Y

execute at @s[scores={bs.collision=1..,bs.ori.v=1..}] run function bs.move:forward/child/collision_detect_neg_y
execute at @s[scores={bs.collision=1..,bs.ori.v=..-1}] run function bs.move:forward/child/collision_detect_pos_y

# Detect Z

execute at @s[scores={bs.collision=1..,bs.ori.h=..-91}] run function bs.move:forward/child/collision_detect_neg_z
execute at @s[scores={bs.collision=1..,bs.ori.h=91..}] run function bs.move:forward/child/collision_detect_neg_z
execute at @s[scores={bs.collision=1..,bs.ori.h=-89..89}] run function bs.move:forward/child/collision_detect_pos_z

# REACTIONS

execute if entity @s[tag=bs.collision] run scoreboard players set move.decomposition.factor bs 0
execute if entity @s[tag=bs.collision] run function bs.move:forward/config/collision/_main_

# UPDATE

function bs.orientation:set
