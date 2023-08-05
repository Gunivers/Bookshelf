# Executed globally

### DEBUG
tellraw @a [{"text":"> bs.smartmove:slide/child/animation","color":"aqua"},{"text":" globally, for ","color":"gray"},{"selector":"@a[tag=bs.smartmove.is_sliding]"}]

# If the sliding armor_stand does not exist anymore, remove the sliding tag from the player
execute as @a[tag=bs.smartmove.is_sliding] at @s unless entity @e[tag=bs.smartmove.slide,distance=..100] run tag @s remove bs.smartmove.is_sliding

# Otherwise, force the sliding player to ride the sliding armor_stand
execute as @a[tag=bs.smartmove.is_sliding] at @s run ride @s mount @e[tag=bs.smartmove.slide,limit=1,sort=nearest]

# Make move all the sliding armor_stands
execute as @e[tag=bs.smartmove.slide] at @s run function bs.move:by_vector