# phantom group
execute store result score #view.raycast.entity.size bs.data run data get entity @s Size 15
scoreboard players add #view.raycast.entity.size bs.data 100
scoreboard players set #view.raycast.hitbox.hwidth bs.data 4500
scoreboard players set #view.raycast.hitbox.height bs.data 5000
scoreboard players operation #view.raycast.hitbox.hwidth bs.data *= #view.raycast.entity.size bs.data
scoreboard players operation #view.raycast.hitbox.height bs.data *= #view.raycast.entity.size bs.data
