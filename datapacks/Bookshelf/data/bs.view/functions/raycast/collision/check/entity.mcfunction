scoreboard players set #view.raycast.entity.id bs.data 0
scoreboard players set #view.raycast.hitbox.offset_x bs.data 0
scoreboard players set #view.raycast.hitbox.offset_z bs.data 0
execute if entity @s[type=#bs.view:raycast/group_1] run scoreboard players add #view.raycast.entity.id bs.data 1
execute if entity @s[type=#bs.view:raycast/group_2] run scoreboard players add #view.raycast.entity.id bs.data 2
execute if entity @s[type=#bs.view:raycast/group_4] run scoreboard players add #view.raycast.entity.id bs.data 4
execute if entity @s[type=#bs.view:raycast/group_8] run scoreboard players add #view.raycast.entity.id bs.data 8
execute if entity @s[type=#bs.view:raycast/group_16] run scoreboard players add #view.raycast.entity.id bs.data 16
execute if entity @s[type=#bs.view:raycast/group_32] run scoreboard players add #view.raycast.entity.id bs.data 32
execute if entity @s[type=#bs.view:raycast/group_64] run scoreboard players add #view.raycast.entity.id bs.data 64
execute store result storage bs:_ id short 1 run scoreboard players get #view.raycast.entity.id bs.data
function bs.view:raycast/hitbox/entity/dispatch with storage bs:_

execute if score #view.raycast.entity.id bs.data matches 1.. unless data storage bs:_ hitbox[] run function bs.view:raycast/collision/check/size
execute if score #view.raycast.entity.id bs.data matches 1.. if data storage bs:_ hitbox[] run function bs.view:raycast/collision/check/shape
execute unless score #view.raycast.distance bs.data matches 2147483647 run scoreboard players set #view.raycast.max_distance bs.data 0
execute if entity @s[tag=bs.view.raycast.hit] run tag @e[tag=bs.view.raycast.origin] remove bs.view.raycast.hit
