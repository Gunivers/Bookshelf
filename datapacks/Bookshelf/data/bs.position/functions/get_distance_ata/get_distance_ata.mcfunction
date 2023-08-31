tp 72398515-296d-4e77-bd30-412f6f65d642 ~ ~ ~
$execute store result score #position.get_distance_ata.x1 bs.data run data get entity 72398515-296d-4e77-bd30-412f6f65d642 Pos[0] $(scale)
$execute store result score #position.get_distance_ata.y1 bs.data run data get entity 72398515-296d-4e77-bd30-412f6f65d642 Pos[1] $(scale)
$execute store result score #position.get_distance_ata.z1 bs.data run data get entity 72398515-296d-4e77-bd30-412f6f65d642 Pos[2] $(scale)
tp 72398515-296d-4e77-bd30-412f6f65d642 0 0 0 0 0

$execute store result score #position.get_distance_ata.x2 bs.data run data get entity @s Pos[0] $(scale)
$execute store result score #position.get_distance_ata.y2 bs.data run data get entity @s Pos[1] $(scale)
$execute store result score #position.get_distance_ata.z2 bs.data run data get entity @s Pos[2] $(scale)

execute store result storage bs:data position.get_distance_ata.x float 1 run scoreboard players operation #position.get_distance_ata.x1 bs.data -= #position.get_distance_ata.x2 bs.data
execute store result storage bs:data position.get_distance_ata.y float 1 run scoreboard players operation #position.get_distance_ata.y1 bs.data -= #position.get_distance_ata.y2 bs.data
execute store result storage bs:data position.get_distance_ata.z float 1 run scoreboard players operation #position.get_distance_ata.z1 bs.data -= #position.get_distance_ata.z2 bs.data

function bs.position:get_distance_ata/compute with storage bs:data position.get_distance_ata
return run data get entity 3b1d6b85-f396-4483-be95-916c11eb0f07 transformation.scale[0]
