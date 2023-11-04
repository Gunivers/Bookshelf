# slime_like group
execute store result score #view.raycast.entity.size bs.data run data get entity @s Size
scoreboard players add #view.raycast.entity.size bs.data 1
scoreboard players operation #view.raycast.entity.size bs.data *= 255 bs.const
scoreboard players set #view.raycast.hitbox.hwidth bs.data 1020
scoreboard players set #view.raycast.hitbox.height bs.data 2040
scoreboard players operation #view.raycast.hitbox.hwidth bs.data *= #view.raycast.entity.size bs.data
scoreboard players operation #view.raycast.hitbox.height bs.data *= #view.raycast.entity.size bs.data
