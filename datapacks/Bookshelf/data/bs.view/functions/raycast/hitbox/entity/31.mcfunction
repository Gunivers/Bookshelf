# interaction group
data modify storage bs:data _ set from entity @s
execute store result score #view.raycast.hitbox.hwidth bs.data run data get storage bs:data _.width 1000000
execute store result score #view.raycast.hitbox.height bs.data run data get storage bs:data _.height 1000000
scoreboard players operation #view.raycast.hitbox.hwidth bs.data /= 2 bs.const
