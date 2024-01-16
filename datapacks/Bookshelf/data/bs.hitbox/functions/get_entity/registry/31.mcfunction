# interaction group
data modify storage bs:ctx _ set from entity @s
execute store result score @s bs.width run data get storage bs:ctx _.width 1000
execute store result score @s bs.height run data get storage bs:ctx _.height 1000
