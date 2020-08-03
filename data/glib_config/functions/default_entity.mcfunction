execute as @e[tag=glib.new] run function glib:health/safe_kill
summon area_effect_cloud ~ 0 ~ {Tags:["glib","glib.new"],NoGravity:1,Duration:999999}
# summon armor_stand ~ 0 ~ {Tags:["glib","glib.new"],NoGravity:1,Invisible:1,Marker:1}

tp @e[tag=glib.new] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.id.parent = @s glib.id
