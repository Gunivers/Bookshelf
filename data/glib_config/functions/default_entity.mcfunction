summon area_effect_cloud ~ ~ ~ {Tags:["glib","glib.new"],NoGravity:1,Duration:999999}
# summon armor_stand ~ ~ ~ {Tags:["glib","glib.new"],NoGravity:1,Invisible:1,Marker:1}

scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.id.parent = @s glib.id
