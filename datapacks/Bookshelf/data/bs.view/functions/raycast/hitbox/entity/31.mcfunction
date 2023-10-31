# interaction group
data modify storage bs:_ nbt set from entity @s
execute store result score #view.raycast.hitbox.hwidth bs.data run data get storage bs:_ nbt.width 1000000
execute store result score #view.raycast.hitbox.height bs.data run data get storage bs:_ nbt.height 1000000
scoreboard players operation #view.raycast.hitbox.hwidth bs.data /= 2 bs.const
