# interaction group
data modify storage bs:ctx _ set from entity @s
execute store result score $hitbox.width bs.out run data get storage bs:ctx _.width 1000
execute store result score $hitbox.height bs.out run data get storage bs:ctx _.height 1000
