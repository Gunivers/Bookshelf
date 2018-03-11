execute @s ~ ~ ~ detect ~ ~ ~ air 0 scoreboard players tag @s remove Collide
execute @s ~ ~ ~ detect ~ ~ ~ tallgrass -1 scoreboard players tag @s remove Collide
execute @s[tag=SpeGlassColl] ~ ~ ~ detect ~ ~ ~ stained_glass -1 scoreboard players tag @s add CollideGlass
execute @s[tag=SpeGlassColl] ~ ~ ~ detect ~ ~ ~ stained_glass_pane -1 scoreboard players tag @s add CollideGlass
execute @s[tag=SpeBarsColl] ~ ~ ~ detect ~ ~ ~ iron_bars -1 scoreboard players tag @s add CollideBars