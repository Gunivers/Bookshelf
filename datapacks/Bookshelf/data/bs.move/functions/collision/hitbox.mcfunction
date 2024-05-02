# compute a bounding box that encompasses all passengers
function #bs.hitbox:get_entity

execute store result score #move._h bs.data run data get storage bs:out hitbox.height 1000
execute store result score #move._w bs.data run data get storage bs:out hitbox.width 500
execute store result score #move._s bs.data run data get storage bs:out hitbox.scale 1000
execute store result score #move._y bs.data run data get entity @s Pos[1] 1000

scoreboard players operation #move._h bs.data *= #move._s bs.data
scoreboard players operation #move._w bs.data *= #move._s bs.data
scoreboard players operation #move._y bs.data -= #move.y bs.data
scoreboard players operation #move._y bs.data *= 1000 bs.const
scoreboard players operation #move._h bs.data += #move._y bs.data
execute store result score #move.sh bs.data run scoreboard players operation #move.h bs.data > #move._h bs.data
execute store result score #move.sw bs.data run scoreboard players operation #move.w bs.data > #move._w bs.data

execute on passengers run function bs.move:collision/hitbox
